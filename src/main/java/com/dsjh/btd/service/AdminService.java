package com.dsjh.btd.service;

import com.dsjh.btd.dao.AdminDAO;
import com.dsjh.btd.dto.StaffDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class AdminService {

    @Autowired
    AdminDAO adminDAO;

    public List<Map<String, String>> myPageList() {
        List<Map<String, String>> list = new ArrayList<>();
        list = adminDAO.myPageList();
        return list;
    }
}
