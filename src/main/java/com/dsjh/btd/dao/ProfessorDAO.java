package com.dsjh.btd.dao;

import com.dsjh.btd.dto.ProfessorDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProfessorDAO {

    // 교수소개
    public List<ProfessorDTO> professorInfo(int prof_id);
    
    // 자료실 등록
}
