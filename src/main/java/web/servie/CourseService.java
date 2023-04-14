package web.servie;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import web.models.Course;
import web.repository.CourseRepository;
import web.servie.metods.CourseMethods;

import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class CourseService implements CourseMethods {
    private final CourseRepository cRepo;
    @Override
    public Course save(Course course) {
        log.info("The course is saved {}", course);
        return cRepo.save(course);
    }

    @Override
    public void deleteById(Long id) {
        log.info("Course deleted {}", id);
        cRepo.deleteById(id);
    }

    @Override
    public Course findById(Long id) {
        log.info("Course found {}", id);
        return cRepo.findById(id).orElse(null);
    }

    @Override
    public List<Course> findAll() {
        return cRepo.findAll();
    }

    @Override
    public void update(Course course, Long id) {
        log.info("The course has been successfully updated {}", course);
        Course course1 = cRepo.getById(id);
        course1.setCourName(course.getCourName());
        course1.setDuration(course.getDuration());
    }
}
