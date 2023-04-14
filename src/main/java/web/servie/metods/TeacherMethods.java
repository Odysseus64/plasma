package web.servie.metods;

import web.models.Teacher;

import java.util.List;

public interface TeacherMethods {
    Teacher save(Teacher teacher);
    void deleteById(Long id);
    Teacher findById(Long id);
    List<Teacher> findAll();
    void update (Teacher teacher, Long id);
}
