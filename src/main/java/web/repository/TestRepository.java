package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.models.TestModel;

import java.util.List;

public interface TestRepository extends JpaRepository<TestModel, Long>{
}
