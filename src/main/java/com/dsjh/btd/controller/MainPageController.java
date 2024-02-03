package com.dsjh.btd.controller;

import com.dsjh.btd.dto.SubjectDTO;
import com.dsjh.btd.dto.SubjectDetailDTO;
import com.dsjh.btd.service.MainPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class MainPageController {
    @Autowired
    private MainPageService mainPageService;

    @GetMapping("/")
    public ModelAndView mainPage() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("mainPage");
        return mav;
    }

    @GetMapping("main/departmentInfo")
    public ModelAndView departmentInfo() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/departmentInfo");
        return mav;
    }

    @GetMapping("/main/subjectDetail")
    public ModelAndView subjectDetail() {
        List<SubjectDetailDTO> subjectDetail = mainPageService.subjectDetail();

        ModelAndView mav = new ModelAndView();
        mav.addObject("subDetail", subjectDetail);
        mav.setViewName("main/subjectDetail");
        return mav;
    }

    @RequestMapping(value = "/findSubject", method={RequestMethod.POST})
    public ModelAndView findSubject(String searchString) {
        List<SubjectDetailDTO> findSubject = mainPageService.findSubject(searchString);
        ModelAndView mav = new ModelAndView();
        mav.addObject("subDetail", findSubject);
        mav.setViewName("main/subjectDetail");
        return mav;
    }

    @GetMapping("/main/subjectInfo")
    public ModelAndView subjectInfo() {
        List<SubjectDTO> subList = mainPageService.subjectList();

        ModelAndView mav = new ModelAndView();
        mav.addObject("subList", subList);
        mav.setViewName("main/subjectInfo");
        return mav;
    }

    @GetMapping("/main/subjectInfoContent")
    public ModelAndView subjectInfoDetail(int sub_id) {
        List<SubjectDTO> subList = mainPageService.subjectList();
        SubjectDTO dto = mainPageService.subjectContent(sub_id);

        ModelAndView mav = new ModelAndView();
        mav.addObject("subInfo", dto);
        mav.addObject("subList", subList);
        mav.setViewName("main/subjectInfoContent");
        return mav;
    }
}
