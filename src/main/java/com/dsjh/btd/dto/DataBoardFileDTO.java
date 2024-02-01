package com.dsjh.btd.dto;

import lombok.Data;

@Data
public class DataBoardFileDTO {
    private int db_file_id;
    private int dBoard_id;
    private String db_file_name;
    private String db_file_saveName;
    private String db_file_type;
    private int db_file_size;
}
