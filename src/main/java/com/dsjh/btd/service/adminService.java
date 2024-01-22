package com.dsjh.btd.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dsjh.btd.dto.staffDTO;
import java.util.List;

@Service

public class adminService {
    @Autowired  SqlSession sqlSession;

        public List<staffDTO> myPagelist(){
            return sqlSession.selectList("selectMyPage");
        }
}
