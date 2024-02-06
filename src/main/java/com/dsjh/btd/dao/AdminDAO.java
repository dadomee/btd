package com.dsjh.btd.dao;

import com.dsjh.btd.dto.DepartmentDTO;
import com.dsjh.btd.dto.ProfessorDTO;
import com.dsjh.btd.dto.StaffDTO;
import com.dsjh.btd.dto.SubjectDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDAO {
    public List<StaffDTO> myPageList();
    public List<ProfessorDTO> profList();
    public List<ProfessorDTO> detailProf(int prof_id);
    public List<DepartmentDTO> departList();
    public List<SubjectDTO> subList();
    public List<ProfessorDTO> getProfName(String depart_name);
}
