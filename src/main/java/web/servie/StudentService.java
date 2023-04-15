package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Student;
import web.models.StudyFormat;
import web.repository.StudentRepository;
import web.servie.metods.StudentMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class StudentService implements StudentMethods {
    private final StudentRepository sRepo;

    @Override
    public Student save(Student student) {
        log.info("Student saved {}", student);
        return sRepo.save(student);
    }

    @Override
    public void deleteById(Long id) {
        log.info("Student deleted {}", id);
        sRepo.deleteById(id);
    }

    @Override
    public Student findById(Long id) {
        log.info("Student found {}", id);
        return sRepo.findById(id).orElse(null);
    }

    @Override
    public List<Student> findAll() {
        return sRepo.findAll();
    }

    @Override
    public void update(Student student, Long id) {
        log.info("The student has been successfully update {}", student);
        Student student1 = sRepo.getById(id);
        student1.setEmail(student.getEmail());
        student1.setFirst_name(student.getFirst_name());
        student1.setLast_name(student.getLast_name());
        student1.setStudyFormat(StudyFormat.ONLINE);
        sRepo.save(student1);
    }
}
