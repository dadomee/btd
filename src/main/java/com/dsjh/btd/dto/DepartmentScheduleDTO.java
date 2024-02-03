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

public class DepartmentScheduleDTO {
    private int schedule_id;            // 학과일정 일련번호(pk)
    private Date schedule_date;         // 날짜
    private String schedule_content;    // 학과일정 내용
}
