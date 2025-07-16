package eud.sm.repository;

import eud.sm.dto.Product;
import eud.sm.frame.SmRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ProductRepository extends SmRepository<Product,Integer> {
}
