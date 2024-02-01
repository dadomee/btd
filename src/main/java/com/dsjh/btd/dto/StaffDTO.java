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
public class StaffDTO {

    private int staff_id;               //교직원 아이디
    private String staff_name;          // 교직원 이름
    private String staff_birth;         // 교직원 생년월일
    private String staff_address;       // 교직원 주소
    private String staff_tel;           // 교직원 전화번호
    private int depart_id;              // 담당 학과 일련번호
    private LocalDateTime staff_date;   // 교직원 입사일
    private String staff_status;        // 교직원 근무 상태 : 재직, 휴직, 퇴사

}
