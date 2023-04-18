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
    public List<Teacher> findAll() {
        return tRepo.findAll();
    }

    @Override
    public Teacher findById(Long id) {
        return tRepo.findById(id).orElse(null);
    }

    @Override
    public Teacher save(Teacher teacher) {
        return tRepo.save(teacher);
    }

    @Override
    public void deleteById(Long id) {
        tRepo.deleteById(id);
    }
}
