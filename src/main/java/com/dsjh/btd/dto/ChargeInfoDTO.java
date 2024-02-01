package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChargeInfoDTO {

    private int char_id;
    private String char_type;
    private String char_name;
    private int char_amount;
    private String char_note;

}
