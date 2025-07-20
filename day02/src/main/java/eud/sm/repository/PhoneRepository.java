package eud.sm.repository;

import eud.sm.dto.Phone;
import eud.sm.frame.SmRepository;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface PhoneRepository extends SmRepository<Phone, String> {
}
