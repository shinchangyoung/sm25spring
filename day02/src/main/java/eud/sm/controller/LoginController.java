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

@Controller // 스프링 MVC에서 이 클래스가 컨트롤러임을 나타냄
@Slf4j // 로그를 사용할 수 있게 해주는 롬복 어노테이션
@RequiredArgsConstructor // final로 선언된 필드를 생성자로 자동 주입
public class LoginController {

    final CustService custService; // 고객 관련 서비스 (회원 정보 처리 등)

    /**
     * 로그인 화면으로 이동
     * URL: /login
     */
    @RequestMapping("/login")
    public String login(Model model) {
        model.addAttribute("center","login"); // center 영역에 login.html 삽입
        return "index"; // index.html을 기본 layout으로 사용
    }

    /**
     * 로그아웃 처리
     * URL: /logout
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        if(session != null){
            session.invalidate(); // 세션 제거 (로그아웃)
        }
        return "index"; // 메인화면(index.html)으로 이동
    }

    /**
     * 로그인 요청 처리 (로그인 실행)
     * URL: /loginimpl?id=abc&pwd=123
     */
    @RequestMapping("/loginimpl")
    public String loginimpl(Model model,
                            @RequestParam("id")  String id,      // 입력받은 아이디
                            @RequestParam("pwd") String pwd,     // 입력받은 비밀번호
                            HttpSession session) throws Exception {
        log.info("ID:{}, PWD:{}", id, pwd); // 로그 출력

        Cust dbCust = null;
        dbCust = custService.get(id); // DB에서 해당 아이디의 회원 조회

        String next = "index"; // 기본적으로 index.html로 이동

        // 로그인 실패: 아이디 없음
        if(dbCust == null){
            model.addAttribute("loginstate","fail"); // 로그인 상태 실패 전달
            model.addAttribute("center","login");    // 다시 로그인 화면 보여줌
        } else {
            // 로그인 성공 여부 확인 (비밀번호 일치)
            if(dbCust.getCustPwd().equals(pwd)){
                session.setAttribute("logincust",dbCust); // 로그인 성공 → 세션에 정보 저장
                next = "redirect:/"; // 메인 페이지로 리다이렉트
            } else {
                model.addAttribute("loginstate","fail"); // 비밀번호 틀림
                model.addAttribute("center","login");    // 다시 로그인 화면
            }
        }
        return next;
    }

    /**
     * 회원가입 페이지 이동
     * URL: /register
     */
    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("center","register"); // center 영역에 register.html 삽입
        return "index"; // index.html로 감싸서 보여줌
    }

    /**
     * 회원가입 처리
     * URL: /mainregisterimpl
     * - Cust 객체에 id, pwd, name 자동 바인딩
     */
    @RequestMapping("/mainregisterimpl")
    public String mainregisterimpl(Model model, Cust cust, HttpSession session) throws Exception {
        log.info("{},{},{}", cust.getCustPwd(), cust.getCustName(), cust.getCustId());

        // ❗️빈 값 검사
        if (cust.getCustId() == null || cust.getCustId().trim().isEmpty() ||
                cust.getCustPwd() == null || cust.getCustPwd().trim().isEmpty() ||
                cust.getCustName() == null || cust.getCustName().trim().isEmpty()) {
            return "redirect:/register"; // 하나라도 비어있으면 다시 회원가입 페이지로
        }

        try {
            custService.register(cust); // DB에 회원 등록
            session.setAttribute("logincust", cust); // 자동 로그인 처리
        } catch(Exception e){
            return "redirect:/register"; // 에러 발생시 다시 회원가입 페이지로
        }

        return "redirect:/"; // 회원가입 성공 → 메인 페이지로 이동
    }

    /**
     * 테스트용 회원가입 구현 (체크박스, 라디오 버튼, 슬라이더 등 다양한 데이터 받기)
     * URL: /registertestimpl?hobby=운동&hobby=게임&gender=남&car=기아&range=80&date=2025-07-20
     */
    @RequestMapping("/registertestimpl")
    public String registertestimpl(Model model,
                                   @RequestParam("hobby") List<String> hobbys, // 취미 여러 개
                                   @RequestParam("gender") String gender,      // 성별
                                   @RequestParam("car") String car,            // 선호 차량 브랜드
                                   @RequestParam("range") int range,           // 슬라이더 값
                                   @RequestParam("date") String date) {        // 선택한 날짜
        log.info("Hobby:{}, Gender:{}, Car:{}, Range:{}, Date:{}", hobbys, gender, car, range, date);

        model.addAttribute("center","login"); // 처리 후 로그인 페이지로 이동
        return "index";
    }
}
