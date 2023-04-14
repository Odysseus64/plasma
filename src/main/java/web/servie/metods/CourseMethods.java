package web.servie.metods;

import web.models.Course;

import java.util.List;

public interface CourseMethods {
    Course save(Course course);
    void deleteById(Long id);
    Course findById(Long id);
    List<Course> findAll();
    void update(Course course, Long id);
}
