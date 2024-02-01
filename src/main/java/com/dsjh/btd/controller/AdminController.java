package com.dsjh.btd.controller;
import com.dsjh.btd.dto.StaffDTO;
import com.dsjh.btd.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller

public class AdminController {
    @Autowired
    private AdminService adminService;

    @GetMapping("/admin")
    public String adminMain() {
        return "admin/main";
    }

    @GetMapping("/admin/myPage")
    public ModelAndView adminMyPage() {
        ModelAndView mav = new ModelAndView();
        List<StaffDTO> slist = adminService.myPageList();
        mav.addObject("myPage", slist);
        mav.setViewName("/admin/myPage");
        return mav;
    }
}