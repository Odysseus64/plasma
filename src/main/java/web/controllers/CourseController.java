package web.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import web.servie.CompanyService;
import web.servie.CourseService;

@RequiredArgsConstructor
@Controller
@RequestMapping("/course")
public class CourseController {
    private final CourseService courseService;
    private final CompanyService companyService;
}
