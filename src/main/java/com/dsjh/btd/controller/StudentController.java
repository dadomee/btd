package com.dsjh.btd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {


    @GetMapping("student")
    public String studentMain() { return "student/main"; }

    @GetMapping("404error")
    public String studentError() { return "student/404error"; }

    @GetMapping("student/writeStudent")
    public ModelAndView writeStudent() {
        ModelAndView mav = new ModelAndView("/student/writeStudent");
        return mav;
    }
}
