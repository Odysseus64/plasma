package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Student;
import web.servie.metods.StudentMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class StudentService implements StudentMethods {
    @Override
    public Student save(Student student) {
        return null;
    }

    @Override
    public void deleteById(Long id) {

    }

    @Override
    public Student findById(Long id) {
        return null;
    }

    @Override
    public List<Student> findAll() {
        return null;
    }

    @Override
    public void update(Student student, Long id) {

    }
}
