package com.dsjh.btd.controller;

import com.dsjh.btd.dto.StudentDTO;
import com.dsjh.btd.service.StudentService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class StudentController {
    @Autowired private StudentService studentService;

    @GetMapping("student")
    public ModelAndView studentMain(HttpServletRequest req) {
        ModelAndView mav = new ModelAndView("/student/main");

        HttpSession session = req.getSession();
        session.setAttribute("student_id", 1);

        return mav;
    }

    @GetMapping("404error")
    public String studentError() { return "student/404error"; }

    @GetMapping("student/writeStudent")
    public ModelAndView writeStudent() {
        ModelAndView mav = new ModelAndView("/student/writeStudent");
        return mav;
    }
    @GetMapping("student/detailStudent")
    public ModelAndView detailStudent(HttpServletRequest req) {
        ModelAndView mav = new ModelAndView("/student/detailStudent");
        HttpSession session = req.getSession();
        int student_id = (int) session.getAttribute("student_id");
        StudentDTO sdto = studentService.studentDetail(student_id);
        mav.addObject("detailStudent", sdto);
        return mav;
    }
}
