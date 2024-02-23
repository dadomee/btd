package com.dsjh.btd.service;

import com.dsjh.btd.dao.StudentDAO;
import com.dsjh.btd.dto.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class StudentService implements StudentDAO {

    private final SqlSessionTemplate sqlSession;

    public StudentService(SqlSessionTemplate sqlSession) { this.sqlSession = sqlSession; }

    public StudentDTO studentDetail(int student_id) { return sqlSession.selectOne("studentDetail", student_id); }
    public List<StudentStatusDTO> studentStatusList() { return sqlSession.selectList("studentStatusList"); }
    public TuitionDTO studentTuition(int student_id) { return sqlSession.selectOne("studentTuition", student_id); }
    public List<ScholarshipDTO> scholarshipList() { return sqlSession.selectList("scholarshipList"); }
    public List<HisSubjectDTO> hisSubjectList() { return sqlSession.selectList("hisSubjectList"); }

    public ManageGradeDTO studentGrade(int student_id) {
        return sqlSession.selectOne("studentGrade", student_id);
    }
    public SubjectDTO subjectDetail(int sub_id) {
        return sqlSession.selectOne("subjectDetail", sub_id);
    }
    public int regSubjectWrite(RegSubjectDTO dto) {
        return sqlSession.insert("regSubjectWrite", dto);
    }
    public List<RegSubjectDTO> regSubjectList() {
        return sqlSession.selectList("regSubjectList");
    }
}
