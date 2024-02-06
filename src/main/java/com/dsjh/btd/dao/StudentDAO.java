package com.dsjh.btd.dao;

import com.dsjh.btd.dto.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentDAO {
    // 종합 학사 정보
    public List<StudentDTO> studentList();
    public List<StudentStatusDTO> studentStatusList();
    public List<TuitionDTO> tuitionList();
    public List<ScholarshipDTO> scholarshipList();
    public List<HisSubjectDTO> hisSubjectList();
}
