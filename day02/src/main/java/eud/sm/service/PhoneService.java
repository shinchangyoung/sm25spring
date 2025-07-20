package eud.sm.service;

import eud.sm.dto.Phone;
import eud.sm.frame.SmService;
import eud.sm.repository.PhoneRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PhoneService implements SmService<Phone, String> {

    final PhoneRepository phoneRepository;

    @Override
    public void register(Phone phone) throws Exception {
        phoneRepository.insert(phone);
    }

    @Override
    public void modify(Phone phone) throws Exception {
        phoneRepository.update(phone);
    }

    @Override
    public void remove(String s) throws Exception {
        phoneRepository.delete(s);
    }

    @Override
    public List<Phone> get() throws Exception {
        return phoneRepository.selectAll();
    }

    @Override
    public Phone get(String s) throws Exception {
        return phoneRepository.select(s);
    }

}
