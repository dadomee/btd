package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @AllArgsConstructor @NoArgsConstructor
public class ScholarshipDTO {
    private int student_id;
    private int schol_semester;
    private String schol_type;
    private int schol_amount;
    private int char_id;
}
