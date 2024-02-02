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
public class ClassDTO {
    private int class_id;
    private int sub_id;
    private String online_time;
    private Date online_date;
    private Date offline_date;
    private int local_id;
}
