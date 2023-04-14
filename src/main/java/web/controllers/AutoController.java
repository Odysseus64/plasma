package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import web.model.Auto;
import web.servie.AutoService;


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
    public String createProduct(Auto auto) {
        autoService.save(auto);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        autoService.delete(id);
        return "redirect:/";
    }
}

