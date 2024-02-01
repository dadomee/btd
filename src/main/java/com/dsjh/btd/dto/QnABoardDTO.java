package com.dsjh.btd.dto;

import lombok.Data;
import java.util.Date;

@Data
public class QnABoardDTO {
    private int qBoard_id;
    private String qBoard_title;
    private String qBoard_content;
    private int student_id;
    private int prof_id;
    private int qBoard_view;
    private Date qBoard_regdate;
    private String qBoard_img1;
    private String qBoard_img2;
    private String qBoard_img3;
    private String qBoard_img4;
    private String qBoard_file1;
    private String qBoard_file2;
    private String qBoard_file3;
    private String qBoard_file4;
    private int qBoard_re_level;
    private int qBoard_re_step;
    private int qBoard_re_group;
}
