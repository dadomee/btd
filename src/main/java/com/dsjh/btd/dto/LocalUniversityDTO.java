package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class LocalUniversityDTO {
    private int local_id;           // 지역대학 일련번호(pk)
    private String local_name;      // 지역대학 이름
    private String local_address;   // 지역대학 주소
    private String local_tel;       // 지역대학 전화번호
}
