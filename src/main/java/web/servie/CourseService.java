package web.servie;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import web.models.Course;
import web.repository.CourseRepository;
import web.servie.metods.CourseMethods;

import java.util.List;





/*
* Привет как только увидишь это сообщение начни писать контроллеры для всех моделей
* Думаю перечислять не стоит посмотри коды у своих знакомых ютуб гугл и чат бота */








@Service
@RequiredArgsConstructor
public class CourseService implements CourseMethods {
    private final CourseRepository cRepo;
    @Override
    public Course save(Course course) {
        return cRepo.save(course);
    }

    @Override
    public void deleteById(Long id) {
        cRepo.deleteById(id);
    }

    @Override
    public Course findById(Long id) {
        return cRepo.findById(id).orElse(null);
    }

    @Override
    public List<Course> findAll() {
        return cRepo.findAll();
    }
}
