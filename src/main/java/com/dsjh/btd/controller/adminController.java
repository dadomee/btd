package com.dsjh.btd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Autowired
    private adminService adminService;
@Controller
public class adminController {

    @GetMapping("/admin")
    public String adminMain(){
        return "/admin/main";
    }

    @GetMapping("/admin/myPage")
    public ModelAndView adminMyPage(){
        ModelAndView mav = new ModelAndView();

        mav.setViewName("admin/myPage");
        return mav;
    }
}
