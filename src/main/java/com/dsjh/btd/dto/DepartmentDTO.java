package com.dsjh.btd.dto;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class DepartmentDTO {
    private int depart_id;
    private String depart_name;
    private String college_name;
    private String depart_tel;
    private String prof_name;
}