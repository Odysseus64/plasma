package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Teacher;

public interface TeacherRepository extends JpaRepository<Teacher, Long> {
}
