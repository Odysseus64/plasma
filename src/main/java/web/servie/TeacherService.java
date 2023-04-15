package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Teacher;
import web.repository.TeacherRepository;
import web.servie.metods.TeacherMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class TeacherService implements TeacherMethods {
    private final TeacherRepository tRepo;

    @Override
    public Teacher save(Teacher teacher) {
        log.info("Teacher saved {}", teacher);
        return tRepo.save(teacher);
    }

    @Override
    public void deleteById(Long id) {
        log.info("Teacher deleted {}", id);
        tRepo.deleteById(id);
    }

    @Override
    public Teacher findById(Long id) {
        log.info("Teacher found {}", id);
        return tRepo.findById(id).orElse(null);
    }

    @Override
    public List<Teacher> findAll() {
        return tRepo.findAll();
    }

    @Override
    public void update(Teacher teacher, Long id) {
        log.info("The teacher had been successfully update {}", teacher);
        Teacher teacher1 = tRepo.getById(id);
        teacher1.setEmail(teacher.getEmail());
        teacher1.setFirst_name(teacher.getFirst_name());
        teacher1.setLast_name(teacher.getLast_name());
        tRepo.save(teacher1);
    }
}
