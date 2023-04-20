package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.models.Company;
import web.servie.CompanyService;

import java.util.List;


@Controller
@RequiredArgsConstructor
public class CompanyController {
    private final CompanyService service;
    //'MAIN' DELETE, UPDATE, FIND ALL
    @GetMapping("/company/main")
    public String main(Model model){
        List<Company> companies = service.findAll();
        model.addAttribute("main",companies);
        return "/company/view-company";
    }
    //SAVE
    @GetMapping("/company/save")
    public String save(Model model){
        model.addAttribute("save", new Company());
        return "/company/create-company";
    }
    //RETURN SAVE TO MAIN
    @PostMapping("/company/save")
    public String saveProduct(Company company) {
        service.save(company);
        return "redirect:/company/main";
    }
    //DELETE ELEMENT BY ID
    @PostMapping("/company/delete/{id}")
    public String delete(@PathVariable("id") Long id){
        service.deleteById(id);
        return "redirect:/company/main";
    }
    //VIEW EDIT
    @GetMapping("/company/edit/{id}")
    public String showEdit(@PathVariable("id") Long id, Model model){
        Company company = service.findById(id);
        model.addAttribute("get", company);
        return "/company/update-company";
    }
    //EDITING
    @PostMapping("/company/edit/{id}")
    public String edit(@PathVariable("id") Long id,
                       @ModelAttribute("company") Company company){
        service.update(id,company);
        return "redirect:/company/main";
    }
}
