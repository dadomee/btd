package com.dsjh.btd.service;

import com.dsjh.btd.dao.StudentDAO;
import com.dsjh.btd.dto.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService implements StudentDAO {

    private final SqlSessionTemplate sqlSession;

    public StudentService(SqlSessionTemplate sqlSession) { this.sqlSession = sqlSession; }

    public List<StudentDTO> studentList() { return sqlSession.selectList("studentList"); }
    public List<StudentStatusDTO> studentStatusList() { return sqlSession.selectList("studentStatusList"); }
    public List<TuitionDTO> tuitionList() { return sqlSession.selectList("tuitionList"); }
    public List<ScholarshipDTO> scholarshipList() { return sqlSession.selectList("scholarshipList"); }
    public List<HisSubjectDTO> hisSubjectList() { return sqlSession.selectList("hisSubjectList"); }
}
