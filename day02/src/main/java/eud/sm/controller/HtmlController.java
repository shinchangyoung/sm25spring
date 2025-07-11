package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@Slf4j
@RequestMapping("/html")
public class HtmlController {

    String dir = "html/";

    @RequestMapping("")
    public String html(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "center");
        return "index";
    }

    @RequestMapping("/html1")
    public String html1(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "html1");
        return "index";
    }

    @RequestMapping("/html2")
    public String html2(Model model) {
        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "html2");
        return "index";
    }

    @RequestMapping("/html3")
    public String html3(Model model) {

        model.addAttribute("left", dir + "left");
        model.addAttribute("center", dir + "html3");
        return "index";
    }

    @RequestMapping("/html33")
    public String html33(Model model
//                        ,@RequestParam("text") String text
    ) {
//        log.info("html3: text={}", text);
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"html3");
        return "index";
    }

}