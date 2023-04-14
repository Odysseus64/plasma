package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {
}
