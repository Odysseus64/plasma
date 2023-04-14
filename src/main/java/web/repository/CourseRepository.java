package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.model.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {
}
