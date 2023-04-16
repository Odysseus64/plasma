package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import web.models.Course;
import web.servie.CompanyService;
import web.servie.CourseService;

import java.util.List;

@RequiredArgsConstructor
@Controller
@RequestMapping("/course")
public class CourseController {
    private final CourseService courseService;
    private final CompanyService companyService;

    @GetMapping("/all-course")
    public String findAll(Model model){
        List<Course> courses = courseService.findAll();
        model.addAttribute("all", courses);
        return "/course/course-list";
    }
    /*
    * https://youtu.be/NA6n1Xu7o_g Продолжить после перерыва Осталось только контроллеры и Верстка сайта
    */
}
