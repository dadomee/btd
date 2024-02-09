package com.dsjh.btd.dao;

import com.dsjh.btd.dto.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDAO {
    public List<StaffDTO> myPageList();
    public List<ProfessorDTO> profList();
    public List<ProfessorDTO> detailProf(int prof_id);
    public List<DepartmentDTO> departList();

    public List<CollegeDTO> getCollegeName();

    public int insertDepartment(DepartmentDTO dto);
    public List<SubjectDTO> subList();

}
