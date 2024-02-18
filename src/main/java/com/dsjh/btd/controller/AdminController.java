package com.dsjh.btd.controller;
import com.dsjh.btd.dto.*;
import com.dsjh.btd.service.AdminService;
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
    private String departName;

    @GetMapping("admin")
    public String adminMain(){
        return "admin/main";
    }

    @GetMapping("admin/myPage")
    public ModelAndView adminMyPage(){
        List<StaffDTO> slist = adminService.myPageList();
        ModelAndView mav = new ModelAndView();
        mav.addObject("myPage", slist);
        mav.setViewName("/admin/myPage");
        return mav;
    }

    @GetMapping("admin/writeDepartment")
    public ModelAndView writeDepart(){
        ModelAndView mav = new ModelAndView();
        List<CollegeDTO> clist = adminService.getCollegeName();
        mav.addObject("college",clist);
        mav.setViewName("/admin/writeDepartment");
        return mav;
    }

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

    @GetMapping("admin/writeProfessor")
    public ModelAndView writeProf(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }

    @GetMapping("admin/writeIP")
    public ModelAndView writeIP(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }

    @GetMapping("admin/writeStaff")
    public ModelAndView writeStaff(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        return mav;
    }

    @GetMapping("admin/writeSubject")
    public ModelAndView writeSub(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        List<DepartmentDTO> dlist = adminService.departList();
        mav.addObject("depart",dlist);
        mav.setViewName("admin/writeSubject");
        return mav;
    }
    @RequestMapping(value = "admin/getProf", method= RequestMethod.GET)
    public void getProfOption(HttpServletResponse res, @RequestParam String depart_name){
        List<ProfessorDTO> prof = adminService.getProfName(depart_name);
        List<DepartmentDTO> depart = adminService.departList();
        }


    @PostMapping("admin/writeSubject")
    public ModelAndView writeSubPro(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listSubject")
    public ModelAndView listSub(){
        ModelAndView mav = new ModelAndView();
        List<SubjectDTO> slist = adminService.subList();
        mav.addObject("subject", slist);
        mav.setViewName("/admin/listSubject");
        return mav;
    }
    @GetMapping("admin/listStudent")
    public ModelAndView listStudent(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listProfessor")
    public ModelAndView listProf(){
        ModelAndView mav = new ModelAndView();
        List<ProfessorDTO> plist = adminService.profList();
        mav.addObject("professor",plist);
        mav.setViewName("admin/listProfessor");
        return mav;
    }

    @GetMapping("admin/detailProfessor")
    public ModelAndView detailProf(HttpServletRequest req){
        ModelAndView mav = new ModelAndView();
        int prof_id = Integer.parseInt(req.getParameter("id"));
        List<ProfessorDTO> plist = adminService.detailProf(prof_id);
        mav.addObject("professor",plist);
        mav.setViewName("admin/detailProfessor");
        return mav;
    }

    @GetMapping("admin/listDepartment")
    public ModelAndView listDepart(){
        ModelAndView mav = new ModelAndView();
        List<DepartmentDTO> dlist = adminService.departList();
        mav.addObject("department",dlist);
        mav.setViewName("admin/listDepartment");
        return mav;
    }
    @GetMapping("admin/listStaff")
    public ModelAndView listStaff(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listIP")
    public ModelAndView listIP(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listQnA")
    public ModelAndView listQnA(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/listNotice")
    public ModelAndView listNotice(){
        ModelAndView mav = new ModelAndView();
        return mav;
    }
    @GetMapping("admin/writeNotice")
    public ModelAndView writeNotice(){
        ModelAndView mav = new ModelAndView();
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
}
