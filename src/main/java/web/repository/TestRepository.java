package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.models.TestModel;

public interface TestRepository extends JpaRepository<TestModel, Long>{
}
