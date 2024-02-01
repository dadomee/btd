package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class GradeDTO {
    private int grade_id;
    private String grade_name;
    private int grade_score;
}
