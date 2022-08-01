package com.j2n.apotek.controller;

import com.j2n.apotek.Dao.BranchDao;
import com.j2n.apotek.Entity.Branch;
import com.j2n.apotek.Entity.api.BranchApi;
import com.j2n.apotek.Utils.ReturnData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.awt.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Optional;


@Controller
@RequestMapping(value = "branch")
public class BranchController {
    String view;
    @Autowired
    BranchDao branchDao;

    @RequestMapping(value = "list",method = {RequestMethod.GET, RequestMethod.POST}, produces = MediaType.APPLICATION_JSON_VALUE)
    public ModelAndView branchList(@RequestParam("search") Optional<String> search, @RequestParam("page") Optional<Integer> page){
        ModelAndView mav = new ModelAndView("content/branch");
        view = "/branch";
        Page<Branch> branchs = null;
        int currentPage = 0;
        int no = 1;

        int paginate = page.orElse(0);

        System.out.println(search.orElse(""));
        System.out.println(page);

        if(paginate > 0){
            currentPage = paginate - 1;
            no = (currentPage * 5) + 1;
        }
        Pageable pageWithFiveElements = PageRequest.of(currentPage, 5);
        branchs = branchDao.findByNameContaining(search.orElse(""), pageWithFiveElements);

        System.out.println(branchs.getTotalElements());
        mav.addObject("view", view);
        mav.addObject("branchList",branchs.getContent());
        mav.addObject("number", branchs.getNumber());
        mav.addObject("totalPage", branchs.getTotalPages());
        mav.addObject("totalElement", branchs.getTotalElements());
        mav.addObject("no", no);
        mav.addObject("beginDisplayItem", no);
        mav.addObject("endDisplayItem", (branchs.getNumber() * 5) + branchs.getContent().size());

        return mav;
    }

    @RequestMapping(value = "save", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody
    ReturnData save(@RequestBody BranchApi branchApi){
        ReturnData rd = new ReturnData();
        try {

            Branch getBranch = branchDao.getDataBaseOnIdBranch(branchApi.getId());

            if (getBranch == null){
                Branch branchAdd = new Branch();
                branchAdd.setName(branchApi.getName());
                branchAdd.setAddress(branchApi.getAddress());
                branchAdd.setDate(new Date());
                branchAdd.setUserBy(branchApi.getUserBy());
                branchAdd.setStatus(true);
                branchDao.save(branchAdd);

                rd.setSuccess(true);
                rd.setMessage("success");
            }else{
                getBranch.setName(branchApi.getName());
                getBranch.setAddress(branchApi.getAddress());
                getBranch.setDate(new Date());
                getBranch.setUserBy(branchApi.getUserBy());
                getBranch.setStatus(branchApi.getStatus());
                branchDao.save(getBranch);

                rd.setSuccess(true);
                rd.setMessage("success");
            }
        } catch (Exception e) {
        e.printStackTrace(); }

        return rd;
    }


}
