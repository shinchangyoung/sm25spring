package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    @RequestMapping("/") // 루트 경로로 들어올 때 처리
    public String main(Model model) {
        return "index";
    }

    @RequestMapping("/about") // 루트 경로로 들어올 때 처리
    public String about(Model model) {
        model.addAttribute("left","aboutleft");
        model.addAttribute("center","about");
        return "index";
    }

    @RequestMapping("/wf") // 루트 경로로 들어올 때 처리
    public String wf(Model model) {
        model.addAttribute("center","wf");
        return "index";
    }

    @RequestMapping("/wt") // 루트 경로로 들어올 때 처리
    public String wt(Model model) {
        model.addAttribute("center","wt");
        return "index";
    }

    @RequestMapping("/map") // 루트 경로로 들어올 때 처리
    public String map(Model model) {
        model.addAttribute("center","map");
        return "index";
    }

}
