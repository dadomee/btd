package com.dsjh.btd.dao;

import com.dsjh.btd.dto.SubjectDTO;
import com.dsjh.btd.dto.SubjectDetailDTO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MainPageDAO {

    public List<SubjectDTO> subjectList();

    public SubjectDTO subjectContent(int sub_id);

    public List<SubjectDetailDTO> subjectDetail();

    public List<SubjectDetailDTO> findSubject(String searchString);
}
