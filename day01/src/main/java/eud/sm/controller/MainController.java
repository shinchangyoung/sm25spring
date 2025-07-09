package eud.sm.controller;

import org.springframework.ui.Model;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
public class MainController {

    @RequestMapping("/") // 루트 경로로 들어올 때 처리
    public String main(Model model) {
        log.info("Start main......");
        model.addAttribute("message","hello world");
        model.addAttribute("number",12300);

        return "index"; // templates/index.html 을 의미

    }


    @RequestMapping("/next") // 루트 경로로 들어올 때 처리
    public String next(Model model) {
        log.info("Start next......");
        return "next"; // templates/index.html 을 의미

    }

    @RequestMapping("/third") // 루트 경로로 들어올 때 처리
    public String third(Model model) {
        log.info("Start third......");
        model.addAttribute("number",100);
        return "third";

    }


}
