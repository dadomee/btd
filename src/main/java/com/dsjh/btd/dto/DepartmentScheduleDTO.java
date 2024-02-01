package com.dsjh.btd.dto;

import lombok.Data;
import java.util.Date;

@Data
public class DepartmentScheduleDTO {
    private int schedule_id;
    private Date schedule_date;
    private String schedule_content;
}
