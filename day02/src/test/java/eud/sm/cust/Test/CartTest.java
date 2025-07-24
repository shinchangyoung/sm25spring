package eud.sm.cust.Test;


import eud.sm.dto.Cart;
import eud.sm.dto.Cust;
import eud.sm.service.CartService;
import eud.sm.service.CustService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
class CartTest {

    @Autowired
    CartService cartService;



    @Test
    void insert() {
        Cart cart = Cart.builder().custId("id01").productId(1000).productQt(5).build();
        try {
            cartService.register(cart);
            log.info("Insert End ------------------------------------------");
        } catch (Exception e) {
            log.info("Error Insert Test ...");
            e.printStackTrace();
        }
    }


    @Test
    void delete() {
        try {
            Cart cart = Cart.builder().custId("id01").productId(1000).build();
            cartService.remove(cart);
            log.info("Delete End ------------------------------------------");
        } catch (Exception e) {
            log.info("Error Test ...");
            e.printStackTrace();
        }
    }

}