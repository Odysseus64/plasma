package token.service;

import lombok.AllArgsConstructor;
import org.springframework.security.authentication.*;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import token.config.JwtUtils;
import token.dto.auth.AuthRequest;
import token.dto.auth.AuthResponse;

@Service
@AllArgsConstructor
public class AuthService {
    private final AuthenticationManager authenticationManager;
    private final JwtUtils jwtUtils;

    public AuthResponse authenticate(AuthRequest authRequest) {
        Authentication authenticate;
        authenticate = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(
                authRequest.getEmail(),
                authRequest.getPassword()
        ));
        String generateToken = jwtUtils.generateToken(authenticate);
        System.out.println(generateToken);
        return new AuthResponse(authRequest.getEmail(), generateToken);
    }
}