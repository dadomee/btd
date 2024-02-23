package com.dsjh.btd.dao;

import com.dsjh.btd.dto.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface StudentDAO {
    // 종합 학사 정보
    public StudentDTO studentDetail(int student_id);
    public List<StudentStatusDTO> studentStatusList();
    public TuitionDTO studentTuition(int student_id);
    public List<ScholarshipDTO> scholarshipList();
    public List<HisSubjectDTO> hisSubjectList();

    // 수강 신청
    public ManageGradeDTO studentGrade(int student_id);
    public SubjectDTO subjectDetail(int sub_id);
    public int regSubjectWrite(RegSubjectDTO dto);
    public List<RegSubjectDTO> regSubjectList();
}
