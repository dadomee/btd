package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
public class DepartmentScheduleDTO {
    private int schedule_id;
    private Date schedule_date;
    private String schedule_content;
}
