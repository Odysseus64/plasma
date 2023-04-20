package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import web.models.Teacher;
import web.servie.TeacherService;

import java.util.List;

@Controller
@RequiredArgsConstructor
//DON'T USE "@RequestMapping"
public class TeacherController {
    private final TeacherService service;
    //'MAIN' DELETE, UPDATE, FIND ALL
    @GetMapping("/teacher/main")
    public String main(Model model){
        List<Teacher> teachers = service.findAll();
        model.addAttribute("main",teachers);
        return "/teacher/view-teacher";
    }
    //SAVE
    @GetMapping("/teacher/save")
    public String save(Model model){
        model.addAttribute("save", new Teacher());
        return "/teacher/create-teacher";
    }
    //RETURN SAVE TO MAIN
    @PostMapping("/teacher/save")
    public String saveProduct(Teacher teacher) {
        service.save(teacher);
        return "redirect:/teacher/main";
    }
    //DELETE ELEMENT BY ID
    @PostMapping("/teacher/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        service.deleteById(id);
        return "redirect:/teacher/main";
    }
    //FIND BY ID
    @GetMapping("/teacher/findById/{id}")
    public String findById(@PathVariable("id") Long id){
        service.findById(id);
        return "redirect:/teacher/main";
    }
    //VIEW EDIT
    @GetMapping("/teacher/edit/{id}")
    public String showEdit(@PathVariable("id") Long id, Model model){
        Teacher teacher = service.findById(id);
        model.addAttribute("get", teacher);
        return "/teacher/update-teacher";
    }
    //EDITING
    @PostMapping("/teacher/edit/{id}")
    public String edit(@PathVariable("id") Long id,
                       @ModelAttribute("teach") Teacher teach){
        Teacher study = service.findById(id);
        study.setFirst_name(teach.getFirst_name());
        study.setLast_name(teach.getLast_name());
        study.setEmail(teach.getEmail());
        study.setPassword(teach.getPassword());
        service.save(study);
        return "redirect:/teacher/main";
    }
}
