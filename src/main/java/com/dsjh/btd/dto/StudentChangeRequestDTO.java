package com.dsjh.btd.dto;

import lombok.*;

import java.util.Date;

@Setter @Getter @AllArgsConstructor @NoArgsConstructor
public class StudentChangeRequestDTO {
    private int re_id;
    private int student_id;
    private String re_type;
    private String re_type_detail;
    private Date re_form_date;
    private Date re_to_date;
    private int re_semester;
    private String re_reason;
    private String re_file;
    private String re_status;
    private String re_tuition;
    private String re_reject;
    private int local_id;
}
