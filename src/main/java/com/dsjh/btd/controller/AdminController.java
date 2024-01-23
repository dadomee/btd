package com.dsjh.btd.controller;

import com.dsjh.btd.dto.StaffDTO;
import com.dsjh.btd.service.AdminService;
import jakarta.servlet.http.HttpServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @GetMapping("admin")
    public String adminMain(){
        return "admin/main";
    }

    @GetMapping("admin/myPage")
    public ModelAndView adminMyPage(){
        List<StaffDTO> slist = adminService.myPagelist();
        ModelAndView mav = new ModelAndView();
        mav.addObject("myPage", slist);
        System.out.println("리스트 값 "+ slist);
        mav.setViewName("admin/myPage");
        return mav;
    }
}
