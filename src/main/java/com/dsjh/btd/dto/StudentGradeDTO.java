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
    private int stu_grade_id;
    private int grade_id;
    private int depart_id;
    private int sub_id;
    private int prof_id;
    private int student_id;
    private int stu_grade_exam;
    private int stu_grade_project;
    private int stu_grade_attend;
    private int stu_grade_substitute;
}
