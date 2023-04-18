package web.servie.metods;

import web.models.Teacher;

import java.util.List;

public interface TeacherMethods {
    List<Teacher> findAll();
    Teacher findById(Long id);
    Teacher save(Teacher teacher);
    void deleteById(Long id);
}