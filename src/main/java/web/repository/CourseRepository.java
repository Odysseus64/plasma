package web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import web.models.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {
}
