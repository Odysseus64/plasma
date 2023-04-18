package web.servie.metods;

import web.models.Course;

import java.util.List;

public interface CourseMethods {
    List<Course> findAll();
    Course save(Course course);
    Course findById(Long id);
    void deleteById(Long id);
}
