package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.models.Student;
import web.servie.GroupService;
import web.servie.StudentService;

import java.util.List;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Controller
@RequestMapping("/student")
public class StudentController {
    private final GroupService groupService;
    private final StudentService studentService;

    @GetMapping("/")
    public String index(@RequestParam("id") Long id, Model model) {
        List<Student> students = studentService.findAll().stream()
                .filter(bound -> bound.getGroup().getId().equals(id))
                .collect(Collectors.toList());
        model.addAttribute("all", students);
        return "/student/student-page";
    }

    @GetMapping("/add-student")
    public String saveStudent(Model model) {
        model.addAttribute("add", new Student());
        return "/student/add-student";
    }

    @GetMapping("/{id}/edit")
    public String edit(Model model, @PathVariable("id") Long id) {
        model.addAttribute("edit", studentService.findById(id));
        return "/student/update-student";
    }

    @PostMapping("/save/student")
    public String createStudent(@ModelAttribute("student") Student student, @RequestParam("id") Long id) {
        student.setGroup(groupService.findById(id));
        studentService.save(student);
        return "redirect:/students?groupId=" + id;
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("student") Student student, @PathVariable("id") Long id, @RequestParam("group_id") Long group_id) {
        student.setGroup(groupService.findById(group_id));
        studentService.update(student, id);
        return "redirect:/students?groupId=" + group_id;
    }

    @DeleteMapping("/delete/{id}")
    public String delete(@PathVariable("id") Long id, @RequestParam("group_id") Long group_id) {
        studentService.deleteById(id);
        return "redirect:/students?groupId=" + group_id;
    }
}
