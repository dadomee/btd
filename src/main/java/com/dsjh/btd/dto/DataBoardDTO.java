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

public class DataBoardDTO {
    private int dBoard_id;
    private String dBoard_title;
    private String dBoard_content;
    private int prof_id;
    private int dBoard_view;
    private Date dBoard_regdate;
    private String dBoard_img1;
    private String dBoard_img2;
    private String dBoard_img3;
    private String dBoard_img4;
    private String dBoard_file1;
    private String dBoard_file2;
    private String dBoard_file3;
    private String dBoard_file4;
    private int dBoard_re_level;
    private int dBoard_re_step;
    private int dBoard_re_group;
}
