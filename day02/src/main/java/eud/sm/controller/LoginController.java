package eud.sm.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
public class LoginController {

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
    }


    @RequestMapping("/loginimpl")
    public String loginimpl(Model model ,
                            @RequestParam("id") String id,
                            @RequestParam("pwd") String pwd) {

        log.info("로그인 시도: ID={}, PWD={}", id, pwd);
        model.addAttribute("center","login");
        return "index";
    }


    @RequestMapping("/email")
    public String email(Model model ,
                            @RequestParam("email") String email)
                        {

        log.info("email: ID={}", email);
        model.addAttribute("center","register");
        return "index";
    }



    @RequestMapping("/registertestimpl")
    public String registertestimpl(Model model,
                                   @RequestParam("gender") String gender,
                                   @RequestParam("hobby") List<String> hobbys,
                                   @RequestParam("car") String car,
                                   @RequestParam("range") int range,
                                   @RequestParam("date") String date
    ) {

        log.info("About Page: gender={}, hobby={}, car={}, range={}, date={}", gender, hobbys, car, range, date);
        model.addAttribute("center","register");
        return "index";
    }






}
