package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@AllArgsConstructor
@NoArgsConstructor
@Setter
public class SubjectDTO {

    private int sub_id;
    private String sub_name;
    private int prof_id;
    private int depart_id;
    private String sub_type;
    private int sub_semester;
    private int sub_year;
    private int sub_grade;
    private String sub_status;
    private Date sub_regdate;
}
