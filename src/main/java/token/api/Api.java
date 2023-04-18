package token.api;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import token.dto.auth.AuthRequest;
import token.dto.auth.AuthResponse;
import token.dto.request.UserRequest;
import token.service.AuthService;
import token.service.UserService;

import javax.annotation.security.PermitAll;


@RestController
@RequiredArgsConstructor
public class Api {
    private final UserService userService;
    private final AuthService authService;
/*
    app.jwt.expirationDateAfterDays=20
    app.jwt.secretKey=ffjifusfhiuor
    app.jwt.tokenPrefix=Bearer

    springdoc.swagger-ui.path=/test*/
    @PostMapping("/register/student")
    @PreAuthorize("hasAnyAuthority('MANAGER')")
    public ResponseEntity<String> create(@RequestBody UserRequest userRequest) {
        userService.createStudent(userRequest);
        return ResponseEntity.ok().body("user with name:" + userRequest.getName() + " successfully save");
    }

    @PostMapping("/register/manager")
    @PreAuthorize("hasAnyAuthority('MANAGER')")
    public ResponseEntity<String> createManager(@RequestBody UserRequest userRequest) {
        userService.createManager(userRequest);
        return ResponseEntity.ok().body("user with name:" + userRequest.getName() + " successfully save");
    }

    @PostMapping("/login")
    @PermitAll
    public AuthResponse authenticated(@RequestBody AuthRequest requestBody) {
        return authService.authenticate(requestBody);
    }

    @GetMapping("/getStudent")
    @PreAuthorize("hasAnyAuthority('STUDENT')")
    public String getString() {
        return "STUDENT";
    }

    @GetMapping("/getManager")
    @PreAuthorize("hasAnyAuthority('MANAGER')")
    public String getAdmin() {
        return "MANAGER";
    }

    @GetMapping("/getTeacher")
    @PreAuthorize("hasAnyAuthority('MANAGER')")
    public String getTeacher() {
        return "TEACHER";
    }
}