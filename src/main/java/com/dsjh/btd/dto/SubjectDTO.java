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
    private String prof_name;
    private int depart_id;
    private String depart_name;
    private String sub_type;
    private int sub_semester;
    private int sub_year; //학년
    private int sub_grade; //이수학점
    private String sub_status;
    private Date sub_regdate;
    private String sub_info;
}
