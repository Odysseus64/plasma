package plasma.plasma_rest.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import plasma.plasma_rest.model.Data;
import plasma.plasma_rest.model.Registration;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("registration")
public class RegController {

    @GetMapping("/list")
    public String mainPage(Model model) {
        List<Registration> regList = Data.getRegistrations().stream().sorted(Comparator.comparing(Registration::getNickName).reversed()).toList();
        regList.forEach(System.out::println);
        model.addAttribute("reg", "Hello");
        return "main-page";
    }
    @GetMapping("get-all")
    public String getAll(Model model){
        Registration registration = new Registration();
        model.addAttribute("all", registration);
        return "product";
    }
}
