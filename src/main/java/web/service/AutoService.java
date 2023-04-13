package web.service;

import web.model.Auto;
import web.repository.AutoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class AutoService {
    private final AutoRepository autoRepository;

    public List<Auto> listAuto(String title) {
        log.info("Successfully found {}", title);
        if (title != null) return autoRepository.findByName(title);
        return autoRepository.findAll();
    }

    public void saveProduct(Auto auto){
//        log.info("Successfully saved {}", auto);
        autoRepository.save(auto);
    }

    public void deleteProduct(Long id) {
        log.info("Delete {}", id);
        autoRepository.deleteById(id);
    }

    public Auto getAutoById(Long id) {
        log.info("Delete Auto By Id{}", id);
        return autoRepository.findById(id).orElse(null);
    }
}

