package com.dsjh.btd.dao;

import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.dto.SubjectDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProfessorDAO {

    // 교수소개
    public List<ProfessorDTO> professorInfo(int prof_id);

    // 강의목록
    public List<SubjectDTO> profSubject(int prof_id);
    
    // 교수 전용 페이지 - 교수 정보 수정
    public int profInfoUpdate(ProfessorDTO dto);

    // 자료실 등록
}
