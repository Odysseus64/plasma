package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import web.models.Course;
import web.models.Teacher;
import web.servie.CourseService;
import web.servie.TeacherService;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class CourseController {
    private final CourseService service;

    //'MAIN' DELETE, UPDATE, FIND ALL
    @GetMapping("/course/main")
    public String main(Model model) {
        List<Course> course = service.findAll();
        model.addAttribute("main", course);
        return "/course/view-course";
    }

    //SAVE
    @GetMapping("/course/save")
    public String saveView(Model model) {
        model.addAttribute("save", new Course());
        return "/course/create-course";
    }

    //RETURN SAVE TO MAIN
    @PostMapping("/course/save")
    public String save(Course course) {
        service.save(course);
        return "redirect:/course/main";
    }

    //DELETE ELEMENT BY ID
    @PostMapping("/course/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.deleteById(id);
        return "redirect:/course/main";
    }

    //VIEW EDIT
    @GetMapping("/course/edit/{id}")
    public String showEdit(@PathVariable("id") Long id, Model model) {
        Course course = service.findById(id);
        model.addAttribute("get", course);
        return "/course/update-course";
    }

    //EDITING
    @PostMapping("/course/edit/{id}")
    public String edit(@PathVariable("id") Long id,
                       @ModelAttribute("teach") Course course) {
        service.update(id, course);
        return "redirect:/course/main";
    }
}
