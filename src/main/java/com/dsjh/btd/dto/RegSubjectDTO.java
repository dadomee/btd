package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RegSubjectDTO {
    private int sub_id;
    private int student_id;

    private String sub_name;    // 과목명
    private int prof_id;        // 교수 번호
    private String prof_name;   // 교수명
    private int depart_id;      // 학과 번호
    private String depart_name; // 학과명
    private String sub_type;    // 과목 종류  
    private int sub_semester;   // 과목 학기
    private int sub_year;       // 학년
    private int sub_grade;      //이수학점
    private String sub_status;  // 과목 상태
    private Date sub_regdate;   // 과목 등록 날짜
    private String sub_info;    // 과목 설명
}
