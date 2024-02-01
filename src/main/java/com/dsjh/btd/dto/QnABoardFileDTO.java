package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class QnABoardFileDTO {
    private int qb_file_id;
    private int qBoard_id;
    private String qb_file_name;
    private String qb_file_saveName;
    private String qb_file_type;
    private int qb_file_size;
}
