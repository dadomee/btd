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
public class ClassroomDTO {
    private int classroom_id;               // 강의실 일련번호
    private int local_id;                   // 소속 지역학교 주소
    private String class_hall;              // 강의동
    private int classroom_sheets;           // 강의실 총좌석수
    private int classroom_row;              // 강의실 행
    private int classroom_col;              // 강의실 열
    private LocalDateTime classroom_regdate;// 강의실 등록일
}
