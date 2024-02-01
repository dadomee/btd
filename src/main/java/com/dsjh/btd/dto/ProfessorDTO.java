package com.dsjh.btd.dto;

import lombok.Data;

@Data
public class ProfessorDTO {
    private int prof_id;
    private String prof_name;
    private String prof_img;
    private String prof_email;
    private String prof_tel;
    private String prof_education;
    private String prof_career;
    private int local_id;
    private int depart_id;
    private int subject_id;
}
