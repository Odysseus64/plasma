package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Auto;

import java.util.List;

public interface AutoRepository extends JpaRepository<Auto, Long>{
    List<Auto> findByName(String title);
}
