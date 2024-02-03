package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class GradeDTO {
    private int grade_id;       // 성적 일련번호(pk)
    private String grade_name;  // A+, A, B+, B, C+, C, D+, D, F
    private int grade_score;    // 점수
}
