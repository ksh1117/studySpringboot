package com.sample.board.main;

import com.sample.board.service.BoardSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @Autowired
    private BoardSerivce boardService;

    @GetMapping("/")
    public String main(Model model) {

        model.addAttribute("list", boardService.boardList());

        return "/main";
    }

}
