package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class SubjectDetailDTO {
    private int sub_detail_id;              // 교과과정 세부사항 일련번호(pk)
    private int sub_id;                     // 과목명 일련번호
    private String sub_detail_type;         // 수업 유형 - 출석 or 비출석(온라인)
    private String sub_detail_exam;         // 시험 유형 - 중간 시험 , 기말 시험
    private String sub_detail_project;      // 중간 과제 유무(Y/N)
    private String sub_detail_substitute;   // 대체 시험 유무(Y/N)
    private int sub_semester;
    private int sub_year;
    private String sub_name;
    private String sub_type;
}
