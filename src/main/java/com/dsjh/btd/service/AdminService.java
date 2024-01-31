package com.dsjh.btd.service;

import com.dsjh.btd.service.impl.AdminMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dsjh.btd.dto.StaffDTO;
import java.util.List;

@Service
public class AdminService {
    @Autowired AdminMapper adminMapper;

    public List<StaffDTO> selectMyPage() {
        return adminMapper.selectMyPage();
    }
}

