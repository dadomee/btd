package com.dsjh.btd.service;

import com.dsjh.btd.dto.StaffDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AdminService {

    private final SqlSessionTemplate sqlSession;

    public AdminService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }

    public List<StaffDTO> myPageList() {
        return sqlSession.selectList("myPageList");
    }

}
