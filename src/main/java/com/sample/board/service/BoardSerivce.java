package com.sample.board.service;

import com.sample.board.jpa.domain.Board0103;
import com.sample.board.jpa.repository.Board0103Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardSerivce {

    @Autowired
    private Board0103Repository board0103Repository;

    public void write(Board0103 board0103) {
        board0103Repository.save(board0103);
    }

    public List<Board0103> boardList() {
        return board0103Repository.findAll();
    }

    public void boardDelete(Integer id) {

        board0103Repository.deleteById(id);

    }

}
