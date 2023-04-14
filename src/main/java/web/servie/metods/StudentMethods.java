package web.servie.metods;

import web.models.Student;

import java.util.List;

public interface StudentMethods {
    Student save (Student student);
    void deleteById(Long id);
    Student findById(Long id);
    List<Student> findAll();
    void update (Student student, Long id);
}
