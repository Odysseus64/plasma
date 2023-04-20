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
    @Override
    public void update(Long id, Teacher teach){
        Teacher study = tRepo.findById(id).orElse(null);
        assert study != null;
        study.setFirst_name(teach.getFirst_name());
        study.setLast_name(teach.getLast_name());
        study.setEmail(teach.getEmail());
        study.setPassword(teach.getPassword());
        tRepo.save(study);
    }
}
