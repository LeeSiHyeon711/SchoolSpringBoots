package org.lsh.demo1.controller;

import lombok.extern.log4j.Log4j2;
import org.lsh.demo1.dto.BoardDTO;
import org.lsh.demo1.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j2
@RequestMapping("/board")
public class BoardController {
    @Autowired
    private BoardService boardService;
    @GetMapping("/list")
    public void list(Model model) {
        model.addAttribute("boardList", boardService.getList());
    }
    @GetMapping("/register")
    public void register() {}
    @PostMapping("/register")
    public String register(@Validated BoardDTO boardDTO) {
        boardService.register(boardDTO);
        return "redirect:/board/list";
    }
    @GetMapping("/read")
    public void read(@RequestParam("bno") int bno, Model model) {
        BoardDTO dto = boardService.getOne(bno);
        model.addAttribute("dto", dto);
    }
    @GetMapping("/modify")
    public void update(@RequestParam("bno") int bno, Model model) {
        BoardDTO dto = boardService.getOne(bno);
        model.addAttribute("dto", dto);
    }
    @PostMapping("/modify")
    public String modify(BoardDTO boardDTO, RedirectAttributes redirectAttributes) {
        boardService.modify(boardDTO);
        redirectAttributes.addAttribute("bno", boardDTO.getBno());
        return "redirect:/board/read";
    }
    @PostMapping("/remove")
    public String remove(int bno) {
        boardService.remove(bno);
        return "redirect:/board/list";
    }
}
