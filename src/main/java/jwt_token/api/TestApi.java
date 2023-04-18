package jwt_token.api;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import web.models.TestModel;
import web.servie.TestService;

import java.util.List;

@RestController("api/v1/test")
@RequiredArgsConstructor
public class TestApi {
    private final TestService testService;
    @GetMapping
    private final List<TestModel> view(){
        return testService.findAll();
    }
}
