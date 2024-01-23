package com.dsjh.btd.service;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dsjh.btd.dto.StaffDTO;
import java.util.List;

@Service
@Mapper
public class AdminService {

    @Autowired  SqlSession sqlSession;

        public List<StaffDTO> myPagelist(){
            return sqlSession.selectList("selectMyPage");
        }
}
