package com.dsjh.btd.dto;

import lombok.Data;

@Data
public class SubjectDetailDTO {
    private int sub_detail_id;
    private int sub_id;
    private String sub_detail_type;
    private String sub_detail_exam;
    private String sub_detail_project;
    private String sub_detail_substitute;
}
