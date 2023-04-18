package token.dto.auth;


import lombok.*;

@Setter
@Getter
public class AuthRequest {
    private String email;
    private String password;
}