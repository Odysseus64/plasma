package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Teacher;
import web.servie.metods.TeacherMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class TeacherService implements TeacherMethods {
    @Override
    public Teacher save(Teacher teacher) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Teacher findById(Long id) {
        return null;
    }

    @Override
    public List<Teacher> findAll() {
        return null;
    }

    @Override
    public void update(Teacher teacher, Long id) {

    }
}
