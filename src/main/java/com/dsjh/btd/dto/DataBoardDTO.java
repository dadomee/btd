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
    private int dBoard_id;              // 자료실 게시판 일련번호(pk)
    private String dBoard_title;        // 자료실 게시판 제목
    private String dBoard_content;      // 자료실 게시판 내용
    private int prof_id;                // 작성자
    private int dBoard_view;            // 조회수
    private Date dBoard_regdate;        // 작성일
    private String dBoard_file1;        // 파일1
    private String dBoard_file2;        // 파일2
    private String dBoard_file3;        // 파일3
    private String dBoard_file4;        // 파일4
    private int dBoard_re_level;
    private int dBoard_re_step;
    private int dBoard_re_group;
}
