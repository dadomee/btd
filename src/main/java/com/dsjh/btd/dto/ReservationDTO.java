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
public class ReservationDTO {
    private int reserv_id;              // 예약 일련번호
    private int local_id;               // 소속 지역학교 주소
    private int class_id;               // 강의 일련번호
    private int classroom_id;           // 강의실 일련번호
    private String reserv_type;         // 출석수업/기말시험 구분
    private String reserv_sheet;        // 예약 선택 좌석
    private String reserv_state;        // 예약 상태 대기중/확정/취소
    private LocalDateTime reserv_date;  // 예약 날짜
}
