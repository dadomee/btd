package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter @AllArgsConstructor @NoArgsConstructor
public class TuitionDTO {
    private int tui_id;
    private int student_id;
    private int tui_semester;
    private String tui_status;
    private int tui_amount;
    private int char_id;
}
