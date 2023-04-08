package plasma.plasma_rest.services;


import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import plasma.plasma_rest.model.Registration;
import plasma.plasma_rest.repository.MainPage;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class RegService {
    private static MainPage mainPage;

    public Registration save(Registration entity) {
        return mainPage.save(entity);
    }

    public Optional<Registration> findById(Long id) {
        return mainPage.findById(id);
    }

    public List findAll() {
        return mainPage.findAll();
    }

    public void deleteById(Long id) {
        mainPage.deleteById(id);
    }

    public void deleteAll() {
        mainPage.deleteAll();
    }
}
