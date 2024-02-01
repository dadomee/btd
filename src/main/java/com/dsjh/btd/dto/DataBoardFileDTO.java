package com.dsjh.btd.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class DataBoardFileDTO {
    private int db_file_id;
    private int dBoard_id;
    private String db_file_name;
    private String db_file_saveName;
    private String db_file_type;
    private int db_file_size;
}
