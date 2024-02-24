package com.dsjh.btd.service;
import com.dsjh.btd.dao.MainPageDAO;
import com.dsjh.btd.dto.*;
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

    // 전공교과소개 목록
    public List<SubjectDTO> subjectList() {
        return sqlSession.selectList("subjectList");
    }

    // 전공교과소개 내용
    public SubjectDTO subjectContent(int sub_id) {
        return sqlSession.selectOne("subjectContent", sub_id);
    }

    // 전공교과소개 - 키워드로 검색
    public List<SubjectDTO> findSubject(String searchString) {
        return sqlSession.selectList("findSubject", searchString);
    }

    // 교과과정
    public List<SubjectDetailDTO> subjectDetailInfo() {
        return sqlSession.selectList("subjectDetailInfo");
    }
    
    // 교과과정 - 키워드로 검색
    public List<SubjectDetailDTO> findSubDetail(String searchString) {
        return sqlSession.selectList("findSubDetail", searchString);
    }

    // 교수진 소개
    @Override
    public List<ProfessorDTO> professorList() {
        return sqlSession.selectList("professorList");
    }

    // 공지사항 목록
    public List<NoticeDTO> noticeList() {
        return sqlSession.selectList("noticeList");
    }

    // 공지사항 - 키워드로 검색
    public List<NoticeDTO> findNotice(String searchString) {
        return sqlSession.selectList("findNotice", searchString);
    }

    // 공지사항 내용
    public NoticeDTO noticeContent(int notice_id) {
        return sqlSession.selectOne("noticeContent", notice_id);
    }
}
