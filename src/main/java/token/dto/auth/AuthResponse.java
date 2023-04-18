package token.dto.auth;

import lombok.*;

@Setter
@Getter
@AllArgsConstructor
public class AuthResponse {
    private String email;
    private String jwt;
}