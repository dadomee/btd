package com.dsjh.btd.service;

import com.dsjh.btd.dao.AdminDAO;
import com.dsjh.btd.dto.DepartmentDTO;
import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.dto.StaffDTO;
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
    public List<ProfessorDTO> profList(){ return sqlSession.selectList("profList");  }
    public List<DepartmentDTO> departList(){ return sqlSession.selectList("departList");  }
    public List<ProfessorDTO> detailProf(int prof_id){ return sqlSession.selectList("detailProf",prof_id);  }

}
