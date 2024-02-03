package com.dsjh.btd.controller;
import com.dsjh.btd.dto.DepartmentDTO;
import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.dto.StaffDTO;
import com.dsjh.btd.service.AdminService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;
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
        return mav;
    }

    @GetMapping("admin/listSubject")
    public ModelAndView listSub(){
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
}
