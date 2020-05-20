package balancetonquizz.controller;

import balancetonquizz.repositories.UserRepository;
import balancetonquizz.security.JwtRequest;
import balancetonquizz.security.JwtResponse;
import balancetonquizz.security.JwtTokenProvider;
import balancetonquizz.security.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class SecurityController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @PostMapping(value = "/authenticate")
    public ResponseEntity<?> createAuthenticationToken(@RequestBody JwtRequest authenticationRequest) throws Exception {

        /*try {
            Authentication auth = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            authenticationRequest.getUsername(),
                            authenticationRequest.getPassword())
            );*/

        final String token = jwtTokenProvider.generateToken(
                customUserDetailsService.loadUserByCredentials(
                        authenticationRequest.getUsername(),
                        authenticationRequest.getPassword()
                )
        );

        return ResponseEntity.ok(new JwtResponse(token));
    }
}
