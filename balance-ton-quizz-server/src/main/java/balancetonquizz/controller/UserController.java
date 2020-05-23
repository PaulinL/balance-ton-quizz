package balancetonquizz.controller;

import balancetonquizz.dto.UserDto;
import balancetonquizz.exception.UserAlreadyExistException;
import balancetonquizz.security.JwtResponse;
import balancetonquizz.security.JwtTokenProvider;
import balancetonquizz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin
public class UserController {

    @Autowired
    public UserService userService;

    @Autowired
    private JwtTokenProvider jwtTokenProvider;

    /**
     * Register a new user
     * @param userDto with data
     * @return authentication token
     * @throws UserAlreadyExistException if the username already exists
     */
    @PostMapping(value = "/register")
    public ResponseEntity<JwtResponse> Register(@RequestBody UserDto userDto) throws UserAlreadyExistException {
        userService.registerNewUserAccount(userDto);
        String token = jwtTokenProvider.generateToken(userDto.getUsername(), userDto.getPassword());
        return ResponseEntity.ok(new JwtResponse(token));
    }
}
