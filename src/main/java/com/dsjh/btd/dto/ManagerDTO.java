package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter @Getter @AllArgsConstructor @NoArgsConstructor
public class ManagerDTO {
    private int m_id;
    private int staff_id;
    private String m_name;
    private String m_duties;
    private String m_tel;
    private String m_note;
}
