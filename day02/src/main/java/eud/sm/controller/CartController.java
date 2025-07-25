package eud.sm.controller;

import eud.sm.dto.Cart;
import eud.sm.dto.Product;
import eud.sm.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {

    final CartService cartService;

    String dir = "cart/";

    @RequestMapping("")
    public String cart(Model model, @RequestParam("id") String id) throws Exception {
        List<Cart> list = null;
        list = cartService.findByCustId(id);
        model.addAttribute("carts",list);
        model.addAttribute("center",dir+"cart");
        return "index";
    }


    @RequestMapping("/add")
    public String add(Model model ,Cart cart) throws Exception {

        cartService.register(cart);

        return "redirect:/cart?id="+cart.getCustId();
    }

    @RequestMapping("/del")
    public String del(Model model ,Cart cart) throws Exception {
        cartService.remove(cart);
        return "redirect:/cart?id="+cart.getCustId();
    }

    @RequestMapping("/mod")
    public String mod(Model model ,Cart cart) throws Exception {
        cartService.modify(cart);
        return "redirect:/cart?id="+cart.getCustId();
    }


}