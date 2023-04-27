package com.sample.board.admin;

import com.sample.board.jpa.domain.Board0103;
import com.sample.board.service.BoardSerivce;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminController {

    @Autowired
    private BoardSerivce boardService;

    @GetMapping("/admin")
    public String admin(Model model) {

        model.addAttribute("list", boardService.boardList());

        return "/admin";
    }

    @PostMapping("/adminOk")
    public String adminOk(Board0103 board0103, Model model) {
        boardService.write(board0103);
        model.addAttribute("list", boardService.boardList());
        return "redirect:/admin";
    }

    @GetMapping("/delete")
    public String boardDelete(Integer id) {
        boardService.boardDelete(id);

        return "redirect:/admin";
    }
}
