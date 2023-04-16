package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Student;
import web.models.StudyFormat;
import web.repository.StudentRepository;
import web.servie.metods.StudentMethods;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StudentService implements StudentMethods {
    private final StudentRepository sRepo;

    @Override
    public Student save(Student student) {
        return sRepo.save(student);
    }

    @Override
    public void deleteById(Long id) {
        sRepo.deleteById(id);
    }

    @Override
    public Student findById(Long id) {
        return sRepo.findById(id).orElse(null);
    }

    @Override
    public List<Student> findAll() {
        return sRepo.findAll();
    }

    @Override
    public void update(Student student, Long id) {
        Student student1 = sRepo.getById(id);
        student1.setEmail(student.getEmail());
        student1.setFirst_name(student.getFirst_name());
        student1.setLast_name(student.getLast_name());
        student1.setStudyFormat(StudyFormat.ONLINE);
        sRepo.save(student1);
    }
}
