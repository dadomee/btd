package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class StudentGradeDTO {
    private int stu_grade_id;           // 학생 성적 일련번호(pk)
    private int grade_id;               // 성적 일련번호
    private int depart_id;              // 학과 일련번호
    private int sub_id;                 // 과목명 일련번호
    private int prof_id;                // 교수 일련번호
    private int student_id;             // 학생 일련번호
    private int stu_grade_exam;         // 시험 점수
    private int stu_grade_project;      // 과제 점수
    private int stu_grade_attend;       // 출석 점수
    private int stu_grade_substitute;   // 대체시험 점수
}
