package balancetonquizz.controller;

import balancetonquizz.security.JwtRequest;
import balancetonquizz.security.JwtResponse;
import balancetonquizz.security.JwtTokenProvider;
import balancetonquizz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
public class SecurityController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    @Autowired
    private UserService userService;

    /**
     * Authenticate a registered user
     * @param authenticationRequest with information to authenticate
     * @return authentication token
     * @throws Exception
     */
    @PostMapping(value = "/authenticate")
    public ResponseEntity<JwtResponse> createAuthenticationToken(@RequestBody JwtRequest authenticationRequest) throws Exception {

        /*try {
            Authentication auth = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            authenticationRequest.getUsername(),
                            authenticationRequest.getPassword())
            );*/

        final String token = jwtTokenProvider.generateToken(
                        authenticationRequest.getUsername(),
                        authenticationRequest.getPassword()
        );

        return ResponseEntity.ok(
                new JwtResponse(token, userService.findByUsername(authenticationRequest.getUsername()))
        );
    }
}
