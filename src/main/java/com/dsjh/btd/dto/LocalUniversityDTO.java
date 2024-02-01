package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class LocalUniversityDTO {
    private int local_id;
    private String local_name;
    private String local_address;
    private String local_tel;
}
