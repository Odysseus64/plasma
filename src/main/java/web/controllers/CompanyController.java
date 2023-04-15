package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.models.Company;
import web.servie.CompanyService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/company")
public class CompanyController {
    private final CompanyService service;

    @GetMapping("/")
    public String getAll(Model model) {
        model.addAttribute("find", service.findAll());
        return "/company/company-page";
    }

    @GetMapping("/save/Company")
    public String saveCompany(Model model) {
        model.addAttribute("new-com", new Company());
        return "/company/add-company";
    }

    @PostMapping("/save")
    public String saveCompany(@ModelAttribute("company") Company company) {
        service.save(company);
        return "redirect:/";
    }

    @GetMapping("/{id}/edit")
    public String editById(Model model, @PathVariable("id") long id) {
        model.addAttribute("findId", service.findById(id));
        return "/company/update-company";
    }

    @PatchMapping("/{id}")
    public String update(@ModelAttribute("company") Company company, @PathVariable("id") Long id) {
        service.update(company, id);
        return "redirect:/";
    }

    @DeleteMapping("/{id}")
    public String delete(@PathVariable("id") Long id) {
        service.deleteById(id);
        return "redirect:/";
    }
}
