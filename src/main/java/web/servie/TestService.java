package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.TestModel;
import web.repository.TestRepository;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class TestService {
    private final TestRepository autoRepository;

    public List<TestModel> listAuto(String title) {
        log.info("Successfully found {}", title);
        if (title != null) {
            return autoRepository.findByName(title);
        }
        return autoRepository.findAll();
    }

    public void save(TestModel testModel) {
        autoRepository.save(testModel);
    }

    public void delete(Long id) {
        log.info("Delete {}", id);
        autoRepository.deleteById(id);
    }

    public TestModel getAutoById(Long id) {
        log.info("Get Auto By Id {}", id);
        return autoRepository.findById(id).orElse(null);
    }
}
