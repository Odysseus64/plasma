package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.TestModel;

import java.util.List;

public interface Test extends JpaRepository<TestModel, Long>{
    List<TestModel> findByName(String title);
}
