package com.sample.board.jpa.domain;


import lombok.Data;
import javax.persistence.*;

@Entity
@Data
@Table(name = "board0103")
public class Board0103 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String board_ty;

    private String title;

    private String content;

    private String sub_content;




}
