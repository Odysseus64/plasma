package plasma.plasma_rest.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import plasma.plasma_rest.model.Registration;

@Repository
public interface MainPage extends JpaRepository<Registration, Long> {
}
