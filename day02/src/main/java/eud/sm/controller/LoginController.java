package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/login") // 루트 경로로 들어올 때 처리
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/register") // 루트 경로로 들어올 때 처리
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
    }
}
