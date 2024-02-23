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
    private int notice_id;              // 공지사항 게시판 일련번호(pk)
    private String notice_title;        // 공지사항 게시판 제목
    private String notice_content;      // 공지사항 게시판 내용
    private String notice_type;         // 공지사항 타입 : 학사, 시험/성적, 기타
    private int notice_view;            // 조회수
    private Date notice_regdate;        // 작성일
    private String notice_file1;        // 파일1
    private String notice_file2;        // 파일2
    private String notice_file3;        // 파일3
    private String notice_file4;        // 파일4
}
