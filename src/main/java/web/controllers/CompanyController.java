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
@RequestMapping("/company")
public class CompanyController {
    private final CompanyService service;

    @GetMapping("/get/all")
    public String getAll(Model model) {
        List<Company> all = service.findAll();
        model.addAttribute("all", all);
        return "/company/company-list";
    }

    @PostMapping("/delete")
    public String deleteById(Long id) {
        service.deleteById(id);
        return "";
    }
}
