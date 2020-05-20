package balancetonquizz.controller;

import balancetonquizz.dto.UserDto;
import balancetonquizz.exception.UserAlreadyExistException;
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

    @PostMapping(value = "/register")
    public ResponseEntity Register(@RequestBody UserDto userDto) throws UserAlreadyExistException {
        userService.registerNewUserAccount(userDto);
        return new ResponseEntity(HttpStatus.OK);
    }
}
