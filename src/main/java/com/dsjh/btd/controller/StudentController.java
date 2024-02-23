package com.dsjh.btd.controller;

import com.dsjh.btd.dto.*;
import com.dsjh.btd.service.AdminService;
import com.dsjh.btd.service.StudentService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired private StudentService studentService;
    @Autowired private AdminService adminService;

    // 학생정보시스템 홈
    @GetMapping("student")
    public ModelAndView studentMain(HttpServletRequest req) {
        ModelAndView mav = new ModelAndView("/student/main");

        HttpSession session = req.getSession();
        session.setAttribute("student_id", 1);

        return mav;
    }

    // 에러 페이지
    @GetMapping("404error")
    public String studentError() { return "student/404error"; }

    //==아래 공통 메소드==//
    private StudentDTO getStudentDTO(HttpServletRequest req) { // ctrl+alt+m으로 만든 메소드임!
        HttpSession session = req.getSession();
        int student_id = (int) session.getAttribute("student_id");
        StudentDTO sdto = studentService.studentDetail(student_id);
        return sdto;
    }
    /** 종합 학사 정보 **/
    // 학생 정보
    @GetMapping("student/detailStudent")
    public ModelAndView detailStudent(HttpServletRequest req) {
        ModelAndView mav = new ModelAndView("/student/detailStudent");
        StudentDTO sdto = getStudentDTO(req);
        mav.addObject("detailStudent", sdto);
        return mav;
    }
    // 학적 변동
    @GetMapping("student/listStudentStatus")
    public ModelAndView writeStudent() {
        ModelAndView mav = new ModelAndView("/student/listStudentStatus");
        return mav;
    }

    /** 수강 **/
    // 수강신청
    @GetMapping("student/regSubject")
    public ModelAndView RegSubject(HttpServletRequest req) {
        ModelAndView mav = new ModelAndView("/student/writeRegSubject");
        int month = LocalDate.now().getMonthValue();

        mav.addObject("year", LocalDate.now().getYear());
        if(month <= 6) {
            mav.addObject("semester", 1);
        } else {
            mav.addObject("semester", 2);
        }

        StudentDTO sdto = getStudentDTO(req);
        TuitionDTO tdto = studentService.studentTuition(sdto.getStudent_id());
        List<SubjectDTO> slist = adminService.subList();
        ManageGradeDTO mdto = studentService.studentGrade(sdto.getStudent_id());
        if(mdto.getSub_type().equals("일반선택")) {
            mav.addObject("standGrade", mdto.getGrade());
        }
        List<RegSubjectDTO> rdto = studentService.regSubjectList();// 과목마다 수강신청 눌렀을때
        mav.addObject("detailStudent", sdto);
        mav.addObject("tuitionStudent", tdto);
        mav.addObject("listSubject", slist);
        mav.addObject("gradeStudent", mdto);
        mav.addObject("listRegSubject", rdto);

        return mav;
    }
    // 수강신청 과목등록
    @PostMapping("student/regSubject")
    public ModelAndView writeRegSubject(HttpServletRequest req, @RequestParam("sub_id") int sub_id) {
        ModelAndView mav = new ModelAndView();
        StudentDTO sdto = getStudentDTO(req); // student_id를 받기 위함

        RegSubjectDTO dto = new RegSubjectDTO();
        dto.setStudent_id(sdto.getStudent_id());
        dto.setSub_id(sub_id);

        int res = studentService.regSubjectWrite(dto);
        if(res>0) {
            mav.addObject("message", "신청되었습니다.");
            mav.setViewName("/message"); // 모달페이지 /student/message
        } else {
            mav.addObject("error", "error");
            mav.setViewName("/student/404error");
        }

        return mav;
    }

    }
