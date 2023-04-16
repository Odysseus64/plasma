package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import web.models.TestModel;
import web.servie.TestService;

import java.util.List;


@Controller
@RequiredArgsConstructor
@RequestMapping("/test")
public class TestController {
    private final TestService testService;
    /*

    @GetMapping("/")
    public String product(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("auto", testService.listAuto(title));
        return "/test/test";
    }

    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("prom", testService.getAutoById(id));
        return "/test/test-info";
    }

    @PostMapping("/update/{id}")
    public String update(@ModelAttribute("student") TestModel test, @PathVariable("id") Long id) {
        testService.update(test, id);
        return "/test/test-update";
    }

    @PostMapping("/product/create")
    public String createProduct(TestModel testModel) {
        testService.save(testModel);
        return "redirect:/";
    }

    @PostMapping("/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        testService.delete(id);
        return "redirect:/";
    }*/
    @GetMapping("/test")
    public String findAll(Model model){
        List<TestModel> list = testService.findAll();
        model.addAttribute("prom", list);
        return "/test/";
    }
}

