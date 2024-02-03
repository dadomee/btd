package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @AllArgsConstructor @NoArgsConstructor
public class ManageGradeDTO {
    private int student_id;
    private int mg_id;
    private String sub_type;
    private int grade;
    private int major_total;
    private int general_total;
    private int total;
    private String can_graduate;

}
