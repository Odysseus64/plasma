package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.servie.CompanyService;


@Controller
@RequiredArgsConstructor
@RequestMapping("/company")
public class CompanyController {
    private final CompanyService service;

    @GetMapping("/get/all")
    public String getAll(Model model) {
        model.addAttribute("all", service.findAll());
        return "/company/company-list";
    }
}
