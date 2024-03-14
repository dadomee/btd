package com.dsjh.btd.controller;
import com.dsjh.btd.dto.*;
import com.dsjh.btd.service.AdminService;
import com.dsjh.btd.service.MainPageService;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.eclipse.tags.shaded.org.apache.xpath.operations.Mod;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.asm.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
    @Autowired
    private MainPageService mainPageService;

    //메인 페이지
    @GetMapping("admin")
    public String adminMain(){
        return "admin/main";
    }

    //대시보드 클릭
    @GetMapping("admin/myPage")
    public ModelAndView adminMyPage(){
        List<StaffDTO> slist = adminService.myPageList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("myPage", slist);
        mav.setViewName("/admin/myPage");
        return mav;
    }

    //학과 등록
    @GetMapping("admin/writeDepartment")
    public ModelAndView writeDepart(){
        ModelAndView mav = new ModelAndView();
        List<CollegeDTO> clist = adminService.getCollegeName();
        mav.addObject("college",clist);
        mav.setViewName("/admin/writeDepartment");
        return mav;
    }
    //학과 등록 처리
    @PostMapping("admin/writeDepartment")
    public ModelAndView writeDepartPro(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        DepartmentDTO dto = new DepartmentDTO();
        dto.setDepart_name(req.getParameter("depart_name"));
        dto.setDepart_tel(req.getParameter("depart_tel"));
        dto.setCollege_name(req.getParameter("college_name"));
        int res = adminService.insertDepartment(dto);
        if(res>0){
            mav.addObject("msg", "학과 등록이 완료되었습니다.");
            mav.setViewName("/message");
        }else{
            mav.addObject("msg", "학과 등록에 실패하였습니다.");
            mav.setViewName("/message");
        }
        return mav;
    }
    //교수 등록
    @GetMapping("admin/writeProfessor")
    public ModelAndView writeProf(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //교수 등록 처리

    //ip 등록
    @GetMapping("admin/writeIP")
    public ModelAndView writeIP(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //교직원 등록
    @GetMapping("admin/writeStaff")
    public ModelAndView writeStaff(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //과목 등록
    @GetMapping("admin/writeSubject")
    public ModelAndView writeSub(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        List<DepartmentDTO> dlist = adminService.departList();
        List<ProfessorDTO> plist = adminService.profList();
        mav.addObject("depart",dlist);
        mav.addObject("prof",plist);
        mav.setViewName("admin/writeSubject");
        return mav;
    }
    //과목 등록 처리
    @PostMapping("admin/writeSubject")
    public ModelAndView writesSubPro(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        SubjectDTO dto = new SubjectDTO();
        if(req.getParameter("sub_info")!=null) {
            dto.setSub_info(req.getParameter("sub_info"));
        }
        dto.setSub_name(req.getParameter("sub_name"));
        dto.setDepart_name(req.getParameter("depart_name"));
        dto.setSub_grade(Integer.parseInt(req.getParameter("sub_grade")));
        dto.setSub_semester(Integer.parseInt(req.getParameter("sub_semester")));
        dto.setProf_name(req.getParameter("prof_name"));
        dto.setSub_type(req.getParameter("sub_type"));
        dto.setSub_year(Integer.parseInt(req.getParameter("sub_year")));

        int res = adminService.insertSub(dto);
        if(res>0){
            mav.addObject("msg", "과목 등록이 완료되었습니다.");
            mav.setViewName("/message");
        }else{
            mav.addObject("msg", "과목 등록에 실패하였습니다.");
            mav.setViewName("/message");
        }
        return mav;

    }
//    // 동적 셀렉트 박스 구현중 잠시 대기 ..
//    @RequestMapping(value = "admin/getProf", method= RequestMethod.GET)
//    public void getProfOption(HttpServletResponse res, @RequestParam String depart_name){
//        List<ProfessorDTO> prof = adminService.getProfName(depart_name);
//        List<DepartmentDTO> depart = adminService.departList();
//        }

    //과목 목록
    @GetMapping("admin/listSubject")
    public ModelAndView listSub(){
        ModelAndView mav = new ModelAndView();
        List<SubjectDTO> slist = adminService.subList();
        mav.addObject("subject", slist);
        mav.setViewName("/admin/listSubject");
        return mav;
    }
    //학생 목록
    @GetMapping("admin/listStudent")
    public ModelAndView listStudent(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //교수 목록
    @GetMapping("admin/listProfessor")
    public ModelAndView listProf(){
        ModelAndView mav = new ModelAndView();
        List<ProfessorDTO> plist = adminService.profList();
        mav.addObject("professor",plist);
        mav.setViewName("admin/listProfessor");
        return mav;
    }
    //교수 상세정보
    @GetMapping("admin/detailProfessor")
    public ModelAndView detailProf(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        int prof_id = Integer.parseInt(req.getParameter("id"));
        List<ProfessorDTO> plist = adminService.detailProf(prof_id);
        mav.addObject("professor",plist);
        mav.setViewName("admin/detailProfessor");
        return mav;
    }
    //학과 목록
    @GetMapping("admin/listDepartment")
    public ModelAndView listDepart(){
        ModelAndView mav = new ModelAndView();
        List<DepartmentDTO> dlist = adminService.departList();
        mav.addObject("department",dlist);
        mav.setViewName("admin/listDepartment");
        return mav;
    }
    //교직원 목록
    @GetMapping("admin/listStaff")
    public ModelAndView listStaff(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //ip 목록
    @GetMapping("admin/listIP")
    public ModelAndView listIP(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    //질문 목록
    @GetMapping("admin/listQnA")
    public ModelAndView listQnA(HttpServletRequest req, java.util.Map<String, Integer> params){
        ModelAndView mav = new ModelAndView();
        //페이지 넘버
        int pageSize = 10;

        String pageNum = req.getParameter("pageNum");
        if (pageNum == null) {
            pageNum = "1";
        }
        int currentPage = Integer.parseInt(pageNum);
        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = startRow + pageSize - 1;
        int count =0;
        params.put("start", startRow);
        params.put("end", endRow);

        if (endRow > count)
            endRow = count;
        List<NoticeDTO> noticeList= null;
        if (count > 0) {
          noticeList =mainPageService.noticeList();
            int pageCount = (count / pageSize) + (count % pageSize == 0 ? 0 : 1);
            int pageBlock = 2;
            int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
            int endPage = startPage + pageBlock - 1;
            if (endPage > pageCount)
                endPage = pageCount;

            mav.addObject("startPage", startPage);
            mav.addObject("endPage", endPage);
            mav.addObject("pageBlock", pageBlock);
            mav.addObject("pageCount", pageCount);
        }

        mav.addObject("count", count);
        mav.setViewName("admin/listQnA");
        return mav;
    }
    @GetMapping("admin/listNotice")
    public ModelAndView listNotice(HttpServletRequest req, java.util.Map<String, Integer> params){
        ModelAndView mav = new ModelAndView();
        //페이지 넘버
        int pageSize = 10;

        String pageNum = req.getParameter("pageNum");
        if (pageNum == null) {
            pageNum = "1";
        }
        int currentPage = Integer.parseInt(pageNum);
        int startRow = (currentPage - 1) * pageSize + 1;
        int endRow = startRow + pageSize - 1;
        int count = mainPageService.getCountBoard();
        params.put("start", startRow);
        params.put("end", endRow);

        if (endRow > count)
            endRow = count;
        List<NoticeDTO> noticeList= null;
        if (count > 0) {
            noticeList =mainPageService.noticeList();
            int pageCount = (count / pageSize) + (count % pageSize == 0 ? 0 : 1);
            int pageBlock = 2;
            int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
            int endPage = startPage + pageBlock - 1;
            if (endPage > pageCount)
                endPage = pageCount;

            mav.addObject("startPage", startPage);
            mav.addObject("endPage", endPage);
            mav.addObject("pageBlock", pageBlock);
            mav.addObject("pageCount", pageCount);
        }

        mav.addObject("count", count);
        mav.addObject("noticeList", noticeList);
        mav.setViewName("admin/listNotice");
        return mav;
    }
    @GetMapping("admin/writeNotice")
    public ModelAndView writeNotice(){
        ModelAndView mav = new ModelAndView();
        List<NoticeDTO> noticeType = adminService.getNoticeType();
        mav.addObject("notice",noticeType);
        mav.setViewName("admin/writeNotice");
        return mav;
    }
    @PostMapping("admin/writeNotice")
    public ModelAndView writeNoticePro(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listChar")
    public ModelAndView listChar(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/writeSchol")
    public ModelAndView writeSchol(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @PostMapping("admin/writeSchol")
    public ModelAndView writeScholPro(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listSchol")
    public ModelAndView listSChol(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/infoAmount")
    public ModelAndView infoAmount(){
        ModelAndView mav = new ModelAndView();
        List<ChargeInfoDTO> tlist = adminService.listTuition();
        List<ChargeInfoDTO> slist = adminService.listSchol();
        mav.addObject("tuition",tlist);
        mav.addObject("scholarship",slist);
        mav.setViewName("admin/infoAmount");
        return mav;
    }

    @GetMapping("admin/studentStatus")
    public ModelAndView manageStudentStatus(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/manageGrade")
    public ModelAndView manageStudentGrade(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/manageRegSubject")
    public ModelAndView manageRegSub(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/manageFinals")
    public ModelAndView manageFinals(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
}
