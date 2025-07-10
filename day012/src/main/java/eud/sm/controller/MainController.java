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
        log.info("Start main1......");
        log.info("Start main1......");

        return "index"; // templates/index.html 을 의미

    }



}
