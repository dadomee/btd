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

public class QnABoardDTO {
    private int qBoard_id;          // 질문 게시판 일련번호(pk)
    private String qBoard_title;    // 질문 게시판 제목
    private String qBoard_content;  // 질문 게시판 내용
    private int student_id;         // 작성자
    private int prof_id;            // 답변자
    private int qBoard_view;        // 조회수
    private Date qBoard_regdate;    // 작성일
    private String qBoard_file1;    // 파일1
    private String qBoard_file2;    // 파일2
    private String qBoard_file3;    // 파일3
    private String qBoard_file4;    // 파일4
    private int qBoard_re_level;
    private int qBoard_re_step;
    private int qBoard_re_group;
}
