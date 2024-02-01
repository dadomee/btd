package com.dsjh.btd.dao;

import com.dsjh.btd.dto.StaffDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDAO {
    public List<StaffDTO> myPageLis();
}
