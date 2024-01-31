package com.dsjh.btd.service.impl;

import com.dsjh.btd.dto.StaffDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {
    List<StaffDTO> selectMyPage();
}
