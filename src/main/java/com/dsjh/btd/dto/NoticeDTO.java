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

public class NoticeDTO {
    private int notice_id;
    private String notice_title;
    private String notice_content;
    private String notice_type;
    private int notice_view;
    private Date notice_regdate;
    private String notice_img1;
    private String notice_img2;
    private String notice_img3;
    private String notice_img4;
    private String notice_file1;
    private String notice_file2;
    private String notice_file3;
    private String notice_file4;
}
