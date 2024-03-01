package com.dsjh.btd.controller;

import com.dsjh.btd.dto.DataBoardDTO;
import com.dsjh.btd.dto.DataBoardFileDTO;
import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.dto.SubjectDTO;
import com.dsjh.btd.service.ProfessorService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class ProfessorController {
    @Autowired
    private ProfessorService professorService;

    // 교수 메인페이지
    @GetMapping("/professor/profMain")
    public ModelAndView profMain(int prof_id) {
        // 교수소개
        List<ProfessorDTO> profInfo = professorService.professorInfo(prof_id);
        // 강의목록
        List<SubjectDTO> profSubject = professorService.profSubject(prof_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("profInfo", profInfo);
        mav.addObject("profSub", profSubject);
        mav.addObject("prof_id",prof_id);
        mav.setViewName("/professor/profMain");
        return mav;
    }
    
    // 교수 소개
    @GetMapping("/professor/profInfo")
    public ModelAndView professorInfo(int prof_id) {
        List<ProfessorDTO> profInfo = professorService.professorInfo(prof_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("profInfo", profInfo);
        mav.addObject("prof_id",prof_id);
        mav.setViewName("professor/profInfo");
        return mav;
    }

    // 자료실
    @GetMapping("/professor/profDataBoard")
    public ModelAndView professorDataBoard(int prof_id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id",prof_id);
        mav.setViewName("professor/profDataBoard");
        return mav;
    }

    // 학습상담
    @GetMapping("/professor/profQnABoard")
    public ModelAndView professorQnABoard(int prof_id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id",prof_id);
        mav.setViewName("professor/profQnABoard");
        return mav;
    }

    // 교수 전용 페이지
    @GetMapping("/professor/profManagement")
    public ModelAndView professorManagement(int prof_id) {
        List<ProfessorDTO> profInfo = professorService.professorInfo(prof_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("profInfo", profInfo);
        mav.addObject("prof_id", prof_id);
        mav.setViewName("professor/profManagement");
        return mav;
    }

    // 교수 전용 페이지 - 교수 정보 수정
    @RequestMapping(value = "/professor/profUpdateInfo", method={RequestMethod.GET})
    public ModelAndView profUpdateInfo(int prof_id) {
        List<ProfessorDTO> profInfo = professorService.professorInfo(prof_id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("profInfo", profInfo);
        mav.addObject("prof_id", prof_id);
        mav.setViewName("/professor/profUpdateInfo");
        return mav;
    }

    // 교수 전용 페이지 - 교수 정보 수정
    @RequestMapping(value = "/professor/profUpdateInfo", method={RequestMethod.POST})
    public ModelAndView profUpdateInfo2(int prof_id, @ModelAttribute ProfessorDTO dto) {
        int res = professorService.profInfoUpdate(dto);
        ModelAndView mav = new ModelAndView("message");
        mav.addObject("prof_id", prof_id);
        if (res > 0) {
            mav.addObject("msg", "교수 정보 수정 성공");
            mav.addObject("url", "/professor/profUpdateInfo?prof_id="+prof_id);
         }
        return mav;
    }

    // 교수 전용 페이지 - 자료실 등록 페이지
    @RequestMapping(value = "/professor/writeDataBoard", method={RequestMethod.GET})
    public ModelAndView writeDataBoard(int prof_id, HttpServletRequest req) throws IOException {
        int num = 0, re_group = 0, re_step = 0, re_level = 0;
        String dBoard_id = req.getParameter("dBoard_id");
        if (dBoard_id != null) {
            num = Integer.parseInt(dBoard_id);
            re_group = Integer.parseInt(req.getParameter("dBoard_re_group"));
            re_step = Integer.parseInt(req.getParameter("dBoard_re_step"));
            re_level = Integer.parseInt(req.getParameter("dBoard_re_level"));
        }
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id", prof_id);
        mav.addObject("dBoard_id", num);
        mav.addObject("dBoard_re_group", re_group);
        mav.addObject("dBoard_re_step", re_step);
        mav.addObject("dBoard_re_level", re_level);

        mav.setViewName("/professor/writeDataBoard");
        return mav;
    }

    // 교수 전용 페이지 - 자료실 등록 페이지
    @RequestMapping(value = "/professor/writeDataBoard", method={RequestMethod.POST})
    public ModelAndView writeDataBoard(int prof_id, HttpServletRequest req, @RequestParam("filename") List<MultipartFile> multiFileList, @ModelAttribute DataBoardDTO dto, BindingResult result) throws IOException {
//            if (result.hasErrors()) {
//                dto.setDBoard_img1("");
//               dto.setDBoard_img2("");
//                dto.setDBoard_img3("");
//                dto.setDBoard_img4("");
//                dto.setDBoard_file1("");
//                dto.setDBoard_file2("");
//                dto.setDBoard_file3("");
//                dto.setDBoard_file4("");
//            }
//        int num = 0, re_group = 0, re_step = 0, re_level = 0;
//        //이미지 받기
//        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) req;
//        MultipartFile mf = mr.getFile("board_img1");
//        MultipartFile mf2 = mr.getFile("board_img2");
//        MultipartFile mf3 = mr.getFile("board_img3");
//        MultipartFile mf4 = mr.getFile("board_img4");
//
//        String dBoard_file1 = mf.getOriginalFilename();
//        String dBoard_file2 = mf2.getOriginalFilename();
//        String dBoard_file3 = mf3.getOriginalFilename();
//        String dBoard_file4 = mf4.getOriginalFilename();
//
//        UUID uuid = UUID.randomUUID(); //이미지 중복 시 엑스박스 방지용 랜덤 파일명
//
//        HttpSession session= req.getSession();
//        String upPath = session.getServletContext().getRealPath("/resources/img");
//        String upPath1 = session.getServletContext().getRealPath("/resources/files");
//        session.setAttribute("upPath1", upPath1);
//        session.setAttribute("upPath", upPath);
//
//        DataBoardFileDTO fdto = new DataBoardFileDTO();
//
//        if (!mf.isEmpty()) { // 이미지 첨부 되어있을 시
//            dBoard_file1 = uuid.toString() + "_" + dBoard_file1;
//            File file1 = new File(upPath, dBoard_file1);
//            mf.transferTo(file1);
//            dto.setDBoard_file1(dBoard_file1);
//
//        } else if (mf.isEmpty()) { // 이미지 첨부 안되어있을시
//            dto.setDBoard_file1("");
//        }
//
//        if (!mf2.isEmpty()) {
//            dBoard_file2 = uuid.toString() + "_" + dBoard_file2;
//            File file2 = new File(upPath, dBoard_file2);
//            mf2.transferTo(file2);
//            dto.setDBoard_file2(dBoard_file2);
//
//        } else if (mf2.isEmpty()) {
//            dto.setDBoard_file2("");
//        }
//        if (!mf3.isEmpty()) {
//            dBoard_file3 = uuid.toString() + "_" + dBoard_file3;
//            File file3 = new File(upPath, dBoard_file3);
//            mf3.transferTo(file3);
//            dto.setDBoard_file3(dBoard_file3);
//        } else if (mf3.isEmpty()) {
//            dto.setDBoard_file3("");
//        }
//
//        if (!mf4.isEmpty()) {
//            dBoard_file4 = uuid.toString() + "_" + dBoard_file4;
//            File file4 = new File(upPath, dBoard_file4);
//            mf4.transferTo(file4);
//            dto.setDBoard_file4(dBoard_file4);
//        } else {
//            dto.setDBoard_file4("");
//        }
//
//        req.setAttribute("dto", dto);

//        int res = professorService.insertBoard(dto);
//        if (res > 0) {
//            File fileCheck = new File(upPath1);
//            if (!fileCheck.exists())
//                fileCheck.mkdirs();
//            List<Map<String, String>> fileList = new ArrayList<>();
//            if(multiFileList == null || multiFileList.get(0).getOriginalFilename().equals("")) {
//                if(mode.equals("anony")) {
//                    req.setAttribute("msg", "게시글 등록 성공");
//                    req.setAttribute("url", "board_anony.do?mode=anony");
//                }else {
//                    req.setAttribute("msg", "게시글 등록 성공");
//                    req.setAttribute("url", "board_free.do?mode=");
//                    return "message";
//                }
//            }else {
//                for (int i = 0; i < multiFileList.size(); i++) {
//                    String originFile = multiFileList.get(i).getOriginalFilename();
//                    int filesize = (int) multiFileList.get(i).getSize();
//                    String ext = originFile.substring(originFile.lastIndexOf("."));
//                    String changeFile = UUID.randomUUID().toString() + ext;
//                    fdto.setFilename(originFile);
//                    fdto.setSavename(changeFile);
//                    fdto.setFilesize(filesize);
//                    int board_num = boardMapper.maxRe_group(); // 최신글번호 가져오기
//                    fdto.setBoard_num(board_num);
//                    int res2 = boardMapper.fileInsert(fdto);
//                    Map<String, String> map = new HashMap<>();
//                    map.put("filename", originFile);
//                    map.put("savename", changeFile);
//                    fileList.add(map);
//                }
//            }
//            // 파일 업로드
//            try {
//                if (fileList.size()!=0) {
//                    for (int i = 0; i < multiFileList.size(); i++) {
//                        File uploadFile = new File(upPath1 + "\\" + fileList.get(i).get("savename"));
//                        multiFileList.get(i).transferTo(uploadFile);
//                    }
//                }
//                System.out.println("다중 파일 업로드 성공");
//            } catch (IllegalStateException | IOException e) {
//                System.out.println("다중파일 업로드 실패 ㅠㅠ");
//                for (int i = 0; i < multiFileList.size(); i++) {
//                    new File(upPath1 + "\\" + fileList.get(i).get("savename")).delete();
//                }
//                e.printStackTrace();
//            }
//            if(mode.equals("anony")) {
//                req.setAttribute("msg", "게시글 등록 성공");
//                req.setAttribute("url", "board_anony.do?mode=anony");
//            }else {
//                req.setAttribute("msg", "게시글 등록 성공");
//                req.setAttribute("url", "board_free.do?mode=");
//            }
//        }else {
//            req.setAttribute("msg", "게시글 등록 실패");
//            req.setAttribute("url", "write_board.do");
//        }
//        return "message";
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id", prof_id);
        mav.setViewName("/professor/writeDataBoard?prof_id=" + prof_id);
        return mav;
    }

    // 교수 전용 페이지 - 자료실 목록 페이지
    @GetMapping("/professor/listDataBoard")
    public ModelAndView listDataBoard(int prof_id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id", prof_id);
        mav.setViewName("professor/listDataBoard");
        return mav;
    }

    // 교수 전용 페이지 - 학습상담 목록 페이지
    @GetMapping("/professor/listQnABoard")
    public ModelAndView listQnABoard(int prof_id) {
        ModelAndView mav = new ModelAndView();
        mav.addObject("prof_id", prof_id);
        mav.setViewName("professor/listQnABoard");
        return mav;
    }
}
