package com.dsjh.btd.service;

import com.dsjh.btd.dto.StaffDTO;
import com.dsjh.btd.dto.TestDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AdminService {

    private final SqlSessionTemplate sqlSession;

    public AdminService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<StaffDTO> myPageList() {
        return sqlSession.selectList("myPageList");
    }

    public int insertTest(TestDTO dto) {
        return sqlSession.insert("insertTest", dto);
    }
}
