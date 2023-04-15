package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import web.models.Course;
import web.servie.CompanyService;
import web.servie.CourseService;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@RequiredArgsConstructor
@Controller
@RequestMapping("/course")
public class CourseController {
    private final CourseService courseService;
    private final CompanyService companyService;


    @GetMapping()
    public String getCourses(@RequestParam("companyId") Long companyId, Model model) {
        List<Course> courses = new ArrayList<>();
        for (Course course : courseService.findAll()) {
            if (Objects.equals(course.getCompany().getId(), companyId)) {
                courses.add(course);
            }
        }
        model.addAttribute("course", courses);
        return "/course/course-page";
    }

    @GetMapping("/newCourse")
    public String newCourse(Model model, @RequestParam("companyId") Long companyId) {
        model.addAttribute("course", new Course());
        return "/course/add-course";
    }

    @PostMapping("saveCourse")
    public String saveCourse(@ModelAttribute("course") Course course, @RequestParam("companyId") Long id) {
        course.setCompany(companyService.findById(id));
        courseService.save(course);
        return "redirect:/courses?companyId=" + id;
    }

    @GetMapping("/{id}/update")
    public String updateCourse(@PathVariable("id") Long id, Model model) {
        model.addAttribute("course", courseService.findById(id));
        return "course/update-course";
    }

    @PostMapping("/{id}")
    public String updateCourse(@PathVariable("id") Long id,
                               @RequestParam("companyId") Long companyId,
                               @ModelAttribute("course") Course course) {
        course.setId(companyService.findById(companyId).getId());
        courseService.update(course, id);
        return "redirect:/courses?companyId=" + companyId;
    }

    @DeleteMapping("/{id}/delete")
    public String deleteCourse(@PathVariable("id") Long id,
                               @RequestParam("companyId") Long companyId) {
        courseService.deleteById(id);
        return "redirect:/courses?companyId=" + companyId;
    }
}
