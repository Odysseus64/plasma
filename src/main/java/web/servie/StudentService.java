package web.servie;

import lombok.RequiredArgsConstructor;
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
    public List<Student> findAll() {
        return sRepo.findAll();
    }

    @Override
    public Student findById(Long id) {
        return sRepo.findById(id).orElse(null);
    }

    @Override
    public Student save(Student student) {
        return sRepo.save(student);
    }

    @Override
    public void deleteById(Long id) {
        sRepo.deleteById(id);
    }

    @Override
    public void update(Long id, Student student) {
        Student future = sRepo.findById(id).orElse(null);
        assert future != null;
        future.setFirst_name(student.getFirst_name());
        future.setLast_name(student.getLast_name());
        future.setEmail(student.getEmail());
        future.setPassword(student.getPassword());
        future.setStudyFormat(StudyFormat.ONLINE);
        sRepo.save(future);
    }
}
