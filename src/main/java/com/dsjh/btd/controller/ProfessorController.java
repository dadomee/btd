package com.dsjh.btd.controller;

import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.service.ProfessorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ProfessorController {
    @Autowired
    private ProfessorService professorService;

    // 교수 메인페이지
    @GetMapping("/professor/profMain")
    public ModelAndView profMain(int prof_id) {
        List<ProfessorDTO> profInfo = professorService.professorInfo(prof_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("profInfo", profInfo);
        mav.setViewName("/professor/profMain");
        return mav;
    }
    
    // 교수 소개
    @GetMapping("/professor/professorInfo")
    public ModelAndView professorInfo() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/professor/professorInfo");
        return mav;
    }
}
