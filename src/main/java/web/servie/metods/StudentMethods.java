package web.servie.metods;

import web.models.Student;

import java.util.List;

public interface StudentMethods {
    List<Student> findAll();
    Student findById(Long id);
    Student save(Student student);
    void deleteById(Long id);
}
