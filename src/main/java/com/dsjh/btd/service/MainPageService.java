package com.dsjh.btd.service;
import com.dsjh.btd.dao.MainPageDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

@Service
public class MainPageService implements MainPageDAO {
    private final SqlSessionTemplate sqlSession;
    public MainPageService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }
}
