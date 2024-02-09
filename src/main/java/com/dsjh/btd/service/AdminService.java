package com.dsjh.btd.service;

import com.dsjh.btd.dao.AdminDAO;
import com.dsjh.btd.dto.*;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AdminService implements AdminDAO {
    private final SqlSessionTemplate sqlSession;

    public AdminService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<StaffDTO> myPageList() {
        return sqlSession.selectList("myPageList");
    }

    public List<CollegeDTO> getCollegeName(){return sqlSession.selectList("getCollegeName"); 
    }
 
    public int insertDepartment(DepartmentDTO dto){
        System.out.println(dto);
        int res = sqlSession.insert("insertDepartment",dto);
        return res;
    }
    public List<ProfessorDTO> profList() {
        return sqlSession.selectList("profList");
    }

    public List<DepartmentDTO> departList() {
        return sqlSession.selectList("departList");
    }

    public List<ProfessorDTO> detailProf(int prof_id) {
        return sqlSession.selectList("detailProf", prof_id);
    }

    public List<SubjectDTO> subList() {
        return sqlSession.selectList("subList");
    }

    public List<ProfessorDTO> getProfName(String depart_name){
        return  sqlSession.selectList("getProfName");
    }
}
