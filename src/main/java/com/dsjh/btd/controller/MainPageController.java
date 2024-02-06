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

    // 메인페이지
    @GetMapping("/")
    public ModelAndView mainPage() {
        ModelAndView mav = new ModelAndView();
         mav.setViewName("mainPage");
        return mav;
    }
    
    // 학과소개
    @GetMapping("main/departmentInfo")
    public ModelAndView departmentInfo() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/departmentInfo");
        return mav;
    }

    // 전공교과소개
    @GetMapping("/main/subjectInfo")
    public ModelAndView subjectInfo() {
        List<SubjectDTO> subList = mainPageService.subjectList();

        ModelAndView mav = new ModelAndView();
        mav.addObject("subList", subList);
        mav.setViewName("main/subjectInfo");
        return mav;
    }

    // 전공교과소개 내용
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

    // 전공교과소개 - 키워드로 검색
    @RequestMapping(value = "/findSubject", method={RequestMethod.POST})
    public ModelAndView findSubject(String searchString) {
        List<SubjectDTO> findSubject = mainPageService.findSubject(searchString);
        ModelAndView mav = new ModelAndView();
        mav.addObject("subList", findSubject);
        mav.setViewName("main/subjectInfo");
        return mav;
    }
    
    // 교과과정
    @GetMapping("/main/subjectDetail")
    public ModelAndView subjectDetail() {
        List<SubjectDetailDTO> subjectDetail = mainPageService.subjectDetail();

        ModelAndView mav = new ModelAndView();
        mav.addObject("subDetail", subjectDetail);
        mav.setViewName("main/subjectDetail");
        return mav;
    }

    // 교과과정 - 키워드로 검색
    @RequestMapping(value = "/findSubDetail", method={RequestMethod.POST})
    public ModelAndView findSubDetail(String searchString) {
        List<SubjectDetailDTO> findSubDetail = mainPageService.findSubDetail(searchString);
        ModelAndView mav = new ModelAndView();
        mav.addObject("subDetail", findSubDetail);
        mav.setViewName("main/subjectDetail");
        return mav;
    }

    // 학과 일정
    @GetMapping("/main/departmentSchedule")
    public ModelAndView departmentschedule() {
        ModelAndView mav = new ModelAndView();
        mav.setViewName("main/departmentSchedule");
        return mav;
    }
}
