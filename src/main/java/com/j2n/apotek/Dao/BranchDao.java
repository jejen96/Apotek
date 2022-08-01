package com.j2n.apotek.Dao;

import com.j2n.apotek.Entity.Branch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public interface BranchDao extends JpaRepository<Branch, Integer> {

//        @Query("select s from Branch s where name like %?1%")
//        Page<Branch> findByName(String name, Pageable pageable);
//    List<Branch> findByNameIgnoreCaseContaining(String name, Pageable pageable);

//    @Query("from Branch order by id DESC")
//    List<Branch> findAll();

    @Query("from Branch")
     List<Branch> findAll();

    Page<Branch> findByNameContaining(String name, Pageable pageable);
    @Query("from Branch where id = :id")
    Branch getDataBaseOnIdBranch(@Param("id") long id);


}
