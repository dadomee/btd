package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class ProfessorDTO {
    private int prof_id;            // 교수 일련번호(pk)
    private String prof_name;       // 교수 이름
    private String prof_img;        // 교수 사진
    private String prof_email;      // 교수 이메일
    private String prof_tel;        // 교수 전화번호
    private String prof_education;  // 교수 학력
    private String prof_career;     // 교수 경력
    private int local_id;           // 소속 지역학교 주소
    private int depart_id;          // 담당 전공
    private int subject_id;         // 담당 과목
    private String depart_name;     // 담당 학과
}
