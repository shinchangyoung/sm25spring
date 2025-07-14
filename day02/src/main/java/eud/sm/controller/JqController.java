package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/jq")
@Slf4j
public class JqController {

    String dir = "jq/";

    @RequestMapping("")
    public String jq(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"center");
        return "index";
    }
    @RequestMapping("/jq1")
    public String jq1(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq1");
        return "index";
    }
    @RequestMapping("/jq2")
    public String jq2(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq2");
        return "index";
    }
    @RequestMapping("/jq3")
    public String jq3(Model model) {
        model.addAttribute("left",dir+"left");
        model.addAttribute("center",dir+"jq3");
        return "index";
    }
    @RequestMapping("/jqformtest")
    public String jqformtest(Model model,
                             @RequestParam("id") String id,
                             @RequestParam("pwd") String pwd,
                             @RequestParam("comment") String comment,
                             @RequestParam(value = "ch", defaultValue = "null") List<String> ch,
                             @RequestParam(value ="ra",defaultValue = "null") String ra,
                             @RequestParam("sel") String sel
    ) {
        log.info("Input Data: {},{},{},{},{},{}"
                ,id,pwd,comment,ch,ra,sel);
        model.addAttribute("register_id",id);
        model.addAttribute("left",dir+"left");
        if(id.equals("") || pwd.equals("") ) {
            model.addAttribute("center",dir+"center");
        }else{
            model.addAttribute("center",dir+"ok");
        }
        return "index";
    }
}