package com.dsjh.btd.dao;

import com.dsjh.btd.dto.StaffDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface AdminDAO {
    public List<Map<String, String>> myPageList();
}
