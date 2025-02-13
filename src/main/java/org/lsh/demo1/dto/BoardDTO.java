package org.lsh.demo1.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardDTO {
    private int bno;
    private String title;
    private String content;
    private String writer;
    private LocalDate postdate;
    private int visitcount;
}
