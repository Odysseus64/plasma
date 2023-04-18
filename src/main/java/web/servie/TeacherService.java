package web.servie;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import web.models.Teacher;
import web.repository.TeacherRepository;
import web.servie.metods.TeacherMethods;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TeacherService implements TeacherMethods {
    private final TeacherRepository tRepo;

    @Override
    public Teacher save(Teacher teacher) {
        return tRepo.save(teacher);
    }

    @Override
    public void deleteById(Long id) {
        tRepo.deleteById(id);
    }

    @Override
    public Teacher findById(Long id) {
        return tRepo.findById(id).orElse(null);
    }

    @Override
    public List<Teacher> findAll() {
        return tRepo.findAll();
    }

    @Override
    public void update(Teacher teacher, Long id) {
        Teacher teacher1 = tRepo.getOne(id);
        teacher1.setEmail(teacher.getEmail());
        teacher1.setFirst_name(teacher.getFirst_name());
        teacher1.setLast_name(teacher.getLast_name());
        tRepo.save(teacher1);
    }
}
