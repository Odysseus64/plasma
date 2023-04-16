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
@RequestMapping("/testing")
public class TestController {
    private final TestService testService;

    @GetMapping("/")
    public String findAll(Model model) {
        List<TestModel> list = testService.findAll();
        model.addAttribute("test", list);
        return "/test/create-test";
    }

    @GetMapping("/get/{id}")
    public String getById(@PathVariable("id") Long id, Model model) {
        model.addAttribute("prom", testService.getTestById(id));
        return "/test/view-test";
    }

    @PostMapping("/create")
    public String createProduct(TestModel test) {
        testService.saveTest(test);
        return "redirect:/testing/";
    }

    @GetMapping("/update/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        TestModel test = testService.getTestById(id);
        if (test != null) {
            model.addAttribute("test", test);
            return "/test/update-test";
        }
        return "redirect:/testing/";
    }

    @PostMapping("/update/{id}")
    public String update(@PathVariable("id") Long id, @ModelAttribute("test") TestModel test) {
        TestModel existingTest = testService.getTestById(id);
        existingTest.setName(test.getName());
        existingTest.setOwner(test.getOwner());
        existingTest.setCity(test.getCity());
        existingTest.setModel(test.getModel());
        existingTest.setPrice(test.getPrice());
        testService.saveTest(existingTest);
        return "redirect:/testing/get/{id}";
    }

    @PostMapping("/delete/{id}")
    public String deleteById(@PathVariable("id") Long id) {
        testService.deleteTest(id);
        return "redirect:/testing/";
    }

    @GetMapping("/create")
    public String showCreateForm(Model model) {
        TestModel test = new TestModel();
        model.addAttribute("test", test);
        return "/test/create-test";
    }
}
