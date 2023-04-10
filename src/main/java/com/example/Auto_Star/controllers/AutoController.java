package com.example.Auto_Star.controllers;

import com.example.Auto_Star.model.Auto;
import com.example.Auto_Star.servie.AutoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class AutoController {
    private final AutoService autoService;

    @GetMapping("/")
    public String product(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("auto", autoService.listAuto(title));
        return "products";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("prom", autoService.getAutoById(id));
        return "product-info";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1,
                                @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Auto auto) throws IOException {
        autoService.saveProduct(auto, file1, file2, file3);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        autoService.deleteProduct(id);
        return "redirect:/";
    }

    @GetMapping("/login")
    public String getReg() {
        return "register";
    }
}

