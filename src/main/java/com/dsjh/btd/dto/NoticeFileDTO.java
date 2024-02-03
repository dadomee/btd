package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class NoticeFileDTO {
    private int notice_file_id;             // 공지사항 게시판 파일 일련번호(pk)
    private int notice_id;                  // 공지사항 게시판 일련번호
    private String notice_file_name;        // 파일 이름
    private String notice_file_saveName;    // 저장 파일 이름
    private String notice_file_type;        // 파일 유형 - excel, pdf
    private int notice_file_size;           // 파일 크기
}
