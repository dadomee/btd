package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class StudentDTO {
    private int student_id;                 // 학생 일련번호
    private int stu_classof;                // 학생 학번
    private String stu_name;                // 학생 한글이름
    private String stu_ename;               // 학생 영문이름
    private String stu_nationality;         // 학생 국적
    private String stu_img;                 // 학생 사진
    private String stu_identity;            // 학생 주민번호
    private String stu_email;               // 학생 이메일
    private String stu_tel;                 // 학생 전화번호
    private String stu_addr;                // 학생 주소
    private LocalDateTime stu_admission_date;// 학생 입학 날짜
    private int stu_admission_grade;        // 학생 입학 학년
    private String stu_role;                // 학생 학적구분
    private int local_id;                   // 소속 지역학교 주소
    private String local_name;              /** 소속 지역학교 이름 **/
    private String stu_undergrad;           // 학생 학부
    private String stu_major;               // 학생 전공
    private int stu_final_semester;         // 학생 최종등록학기

    private String stu_graduation_state;    // 학생 졸업구분
    private LocalDateTime stu_graduation_date;// 학생 졸업일자
    private String stu_graduation_reserv;   // 학생 졸업유보
    private String stu_defect;              // 학생 장애여부
    private String stu_protection;          // 학생 교육보호여부
    private String stu_native;              // 학생 출신학교명
    private int stu_native_year;            // 학생 출신학교졸업년도
    private String stu_military;            // 학생 병역구분

}
