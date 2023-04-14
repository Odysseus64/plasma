package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import web.model.TestModel;
import web.servie.TestService;


@Controller
@RequiredArgsConstructor
public class TestController {
    private final TestService testService;

    @GetMapping("/")
    public String product(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("auto", testService.listAuto(title));
        return "test";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("prom", testService.getAutoById(id));
        return "test-info";
    }

    @PostMapping("/product/create")
    public String createProduct(TestModel testModel) {
        testService.save(testModel);
        return "redirect:/";
    }

    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        testService.delete(id);
        return "redirect:/";
    }
}

