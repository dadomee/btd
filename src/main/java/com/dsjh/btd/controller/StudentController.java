package com.dsjh.btd.controller;

import com.dsjh.btd.dto.StudentDTO;
import com.dsjh.btd.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StudentController {
    @Autowired private StudentService studentService;

    @GetMapping("student")
    public String studentMain() { return "student/main"; }

    @GetMapping("404error")
    public String studentError() { return "student/404error"; }

    @GetMapping("student/writeStudent")
    public ModelAndView writeStudent() {
        ModelAndView mav = new ModelAndView("/student/writeStudent");
        return mav;
    }
    @GetMapping("student/listStudent")
    public ModelAndView listStudent() {
        ModelAndView mav = new ModelAndView("/student/listStudent");
        List<StudentDTO> slist = studentService.studentList();
//        mav.addObject("listStudent", slist);
        return mav;
    }
}
