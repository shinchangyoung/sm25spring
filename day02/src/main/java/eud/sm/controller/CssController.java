package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/css")
public class CssController {

    String dir = "css/";

    @RequestMapping("")
    public String html(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }
    @RequestMapping("/css1")
    public String html1(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"css1");
        return "index";
    }
    @RequestMapping("/css2")
    public String html2(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"css2");
        return "index";
    }
    @RequestMapping("/css3")
    public String html3(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"css3");
        return "index";
    }
}