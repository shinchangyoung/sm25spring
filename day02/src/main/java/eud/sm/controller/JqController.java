package eud.sm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/jquery")
public class JqController {

    String dir = "jq/";

    @RequestMapping("")
    public String html(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }
    @RequestMapping("/jq1")
    public String html1(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq1");
        return "index";
    }
    @RequestMapping("/jq2")
    public String html2(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq2");
        return "index";
    }
    @RequestMapping("/jq3")
    public String html3(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq3");
        return "index";
    }
}