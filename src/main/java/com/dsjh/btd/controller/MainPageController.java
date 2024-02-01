package com.dsjh.btd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MainPageController {

    @GetMapping("/")
    public String mainPage() {
        return "mainPage";
    }

    @GetMapping("main/departmentInfo")
    public ModelAndView departmentInfo() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/departmentInfo");
        return mav;
    }

    @GetMapping("/main/subjectDetail")
    public ModelAndView subjectDetail() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/subjectDetail");
        return mav;
    }

    @GetMapping("/main/subjectInfo")
    public ModelAndView subjectInfo() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/subjectInfo");
        return mav;
    }
}
