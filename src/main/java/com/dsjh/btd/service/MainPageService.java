package com.dsjh.btd.service;
import com.dsjh.btd.dao.MainPageDAO;
import com.dsjh.btd.dto.SubjectDTO;
import com.dsjh.btd.dto.SubjectDetailDTO;
import org.eclipse.jdt.internal.compiler.batch.Main;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MainPageService implements MainPageDAO {
    private final SqlSessionTemplate sqlSession;

    public MainPageService(SqlSessionTemplate sqlSession) {
        this.sqlSession = sqlSession;
    }
    
    public List<SubjectDTO> subjectList() {
        return sqlSession.selectList("subjectList");
    }

    public SubjectDTO subjectContent(int sub_id) {
        return sqlSession.selectOne("subjectContent", sub_id);
    }

    public List<SubjectDetailDTO> subjectDetail() {
        return sqlSession.selectList("subjectDetail");
    }

    public List<SubjectDetailDTO> findSubject(String searchString) {
        return sqlSession.selectList("findSubject", searchString);
    }

}
