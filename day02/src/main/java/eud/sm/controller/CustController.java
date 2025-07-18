package eud.sm.controller;

import eud.sm.dto.Cust;
import eud.sm.service.CustService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
@RequestMapping("/cust")
@RequiredArgsConstructor
public class CustController {

    final CustService custService;

    String dir = "cust/";
    @RequestMapping("")
    public String cust(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"center");
        return "index";
    }
    @RequestMapping("/add")
    public String add(Model model) {
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"add");
        return "index";
    }
    @RequestMapping("/detail")
    public String detail(Model model, @RequestParam("id") String id) throws Exception {
        Cust cust = null;
        cust = custService.get(id);
        model.addAttribute("cust", cust);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"detail");
        return "index";
    }
    @RequestMapping("/get")
    public String get(Model model) throws Exception {
        List<Cust> list = null;
        list = custService.get();

        model.addAttribute("clist", list);
        model.addAttribute("left", dir+"left");
        model.addAttribute("center", dir+"get");
        return "index";
    }
}