package com.j2n.apotek.controller;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "template")
public class TemplateController {
    String view;

    @RequestMapping(value = "add",method = RequestMethod.GET,produces = MediaType.APPLICATION_JSON_VALUE )
    public ModelAndView template(){
        ModelAndView edit = new ModelAndView("template/tabel");
        view = "/template";
        edit.addObject("view",view);

        return edit;
    }
}
