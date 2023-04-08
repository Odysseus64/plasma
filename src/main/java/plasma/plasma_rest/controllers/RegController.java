package plasma.plasma_rest.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("registration")
public class RegController {

    @GetMapping
    public String mainPage(){
        return "main-page";
    }
}
