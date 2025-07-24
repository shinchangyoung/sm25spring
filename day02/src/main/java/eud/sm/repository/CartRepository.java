package eud.sm.repository;

import eud.sm.dto.Cart;
import eud.sm.frame.SmRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface CartRepository extends SmRepository<Cart, Cart> {
    List<Cart> findByCustId(String custId) throws Exception;
}
