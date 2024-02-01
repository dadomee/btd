package com.dsjh.btd.service;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class MainPageService {
    private final SqlSessionTemplate sqlSession;
    public MainPageService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }
}
