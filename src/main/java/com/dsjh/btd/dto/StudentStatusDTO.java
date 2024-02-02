package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter @Setter @AllArgsConstructor @NoArgsConstructor
public class StudentStatusDTO {
    private  int student_id;
    private String st_status;
    private Date st_regdate;
    private Date st_to_date;
}
