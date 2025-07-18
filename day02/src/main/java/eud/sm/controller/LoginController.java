package eud.sm.controller;

import eud.sm.dto.Cust;
import eud.sm.service.CustService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
@RequiredArgsConstructor
public class LoginController {

    final CustService custService;

    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login");
        return "index";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        if(session != null){
            session.invalidate();
        }
        return "index";
    }


    @RequestMapping("/loginimpl")
    // ?id=aaaaa&pwd=xxxxx
    public String loginimpl(Model model,
                            @RequestParam("id")  String id,
                            @RequestParam("pwd") String pwd,
                            HttpSession session) throws Exception {
        log.info("ID:{}, PWD:{}", id, pwd);

        Cust dbCust = null;
        dbCust = custService.get(id);
        String next = "index";
        if(dbCust == null){
            model.addAttribute("loginstate","fail");
            model.addAttribute("center","login");
        }else{
            if(dbCust.getCustPwd().equals(pwd)){
                session.setAttribute("logincust",dbCust);
                next = "redirect:/";
            }else{
                model.addAttribute("loginstate","fail");
                model.addAttribute("center","login");
            }
        }
        return next;
    }
    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register");
        return "index";
    }

    @RequestMapping("/mainregisterimpl")
    public String mainregisterimpl(Model model,Cust cust, HttpSession session) throws Exception {
        log.info("{},{},{}", cust.getCustPwd(), cust.getCustName(), cust.getCustId());
        // id, pwd, name 입력 받는다.
        // Database에 입력 한다.


        // ❗️빈 값 검사
        if (cust.getCustId() == null || cust.getCustId().trim().isEmpty() ||
                cust.getCustPwd() == null || cust.getCustPwd().trim().isEmpty() ||
                cust.getCustName() == null || cust.getCustName().trim().isEmpty()) {
            // 입력값이 하나라도 비어있다면 다시 회원가입 페이지로 리다이렉트
            return "redirect:/register";
        }

        try{
            custService.register(cust);
            session.setAttribute("logincust",cust);
        }catch(Exception e){
            return "redirect:/register";
        }

        // 메인 페이지로 이동 한다.
        return "redirect:/";
    }

    @RequestMapping("/registertestimpl")
    // ?id=aaaaa&pwd=xxxxx
    public String registertestimpl(Model model,
                                   @RequestParam("hobby") List<String> hobbys,
                                   @RequestParam("gender") String gender,
                                   @RequestParam("car") String car,
                                   @RequestParam("range") int range,
                                   @RequestParam("date") String date) {
        log.info("Hobby:{}, Gender:{}, Car:{}, Range:{}, Date:{}", hobbys, gender, car, range, date);
        model.addAttribute("center","login");
        return "index";
    }
}