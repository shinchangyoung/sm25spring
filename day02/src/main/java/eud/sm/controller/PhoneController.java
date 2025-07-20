package eud.sm.controller;

import eud.sm.repository.PhoneRepository;
import eud.sm.service.PhoneService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping("/phone")
@RequiredArgsConstructor

public class PhoneController {

    final PhoneService phoneService;
    
}
