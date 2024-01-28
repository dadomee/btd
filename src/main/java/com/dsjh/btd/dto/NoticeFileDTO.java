package com.dsjh.btd.dto;

import lombok.Data;

@Data
public class NoticeFileDTO {
    private int notice_file_id;
    private int notice_id;
    private String notice_file_name;
    private String notice_file_saveName;
    private String notice_file_type;
    private int notice_file_size;
}
