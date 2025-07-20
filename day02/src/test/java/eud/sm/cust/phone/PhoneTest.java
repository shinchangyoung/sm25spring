package eud.sm.cust.phone;


import eud.sm.dto.Phone;
import eud.sm.dto.Product;
import eud.sm.service.PhoneService;
import lombok.extern.slf4j.Slf4j;
import lombok.extern.slf4j.XSlf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class PhoneTest {

    @Autowired
    PhoneService phoneService;

    @Test
    void get() {
         Phone phone = null;
        try {
            phone = phoneService.get("p001");
            log.info(phone.toString());
            log.info("Select End ------------------------------------------");

        } catch (Exception e) {
            log.info("Error Test ...");
            e.printStackTrace();
        }
    }

}
