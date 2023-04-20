package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.models.Student;
import web.servie.StudentService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class StudentController {
    private final StudentService service;

    //'MAIN' DELETE, UPDATE, FIND ALL
    @GetMapping("/student/main")
    public String main(Model model) {
        List<Student> students = service.findAll();
        model.addAttribute("student", students);
        return "/student/view-student";
    }

    //SAVE
    @GetMapping("/student/save")
    public String saveView(Model model) {
        model.addAttribute("save", new Student());
        return "/student/create-student";
    }

    //RETURN SAVE TO MAIN
    @PostMapping("/student/save")
    public String save(Student student) {
        service.save(student);
        return "redirect:/student/main";
    }

    //DELETE ELEMENT BY ID
    @PostMapping("/student/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.deleteById(id);
        return "redirect:/student/main";
    }

    //VIEW EDIT
    @GetMapping("/student/edit/{id}")
    public String showEdit(@PathVariable("id") Long id, Model model) {
        Student student = service.findById(id);
        model.addAttribute("get", student);
        return "/student/update-student";
    }

    //EDIT
    @PostMapping("/student/edit/{id}")
    public String edit(@PathVariable("id") Long id,
                       @ModelAttribute("student") Student student) {
        service.update(id, student);
        return "redirect:/student/main";
    }
}
