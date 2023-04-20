package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import web.models.Groups;
import web.servie.GroupService;

import java.util.List;

@RequiredArgsConstructor
@Controller
public class GroupController {
    private final GroupService service;

    //'MAIN' DELETE, UPDATE, FIND ALL
    @GetMapping("/group/main")
    public String main(Model model) {
        List<Groups> groups = service.findAll();
        model.addAttribute("group", groups);
        return "/group/view-group";
    }

    //SAVE
    @GetMapping("/group/save")
    public String saveView(Model model) {
        model.addAttribute("save", new Groups());
        return "/group/create-group";
    }

    //RETURN SAVE TO MAIN
    @PostMapping("/group/save")
    public String save(Groups grop) {
        service.save(grop);
        return "redirect:/group/main";
    }

    //DELETE ELEMENT BY ID
    @PostMapping("/group/delete/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.deleteById(id);
        return "redirect:/group/main";
    }

    //VIEW EDIT
    @GetMapping("/group/edit/{id}")
    public String showEdit(@PathVariable("id") Long id, Model model) {
        Groups groups = service.findById(id);
        model.addAttribute("pol", groups);
        return "/group/update-group";
    }

    //EDIT
    @PostMapping("/group/edit/{id}")
    public String edit(@PathVariable("id") Long id,
                       @ModelAttribute("group") Groups group) {
        service.update(id, group);
        return "redirect:/group/main";
    }
}
