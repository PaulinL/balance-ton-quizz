package balancetonquizz.service;

import balancetonquizz.dto.QuizzDto;
import balancetonquizz.dto.UserDto;
import balancetonquizz.entities.Quizz;
import balancetonquizz.entities.User;
import balancetonquizz.exception.UserAlreadyExistException;
import balancetonquizz.repositories.UserRepository;
import balancetonquizz.security.JwtTokenProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private JwtTokenProvider jwttp;

    final String PREFIX_BEARER = "Bearer ";

    /**
     * Enregistre un nouvel utilisateur en BD
     * @param userDto contenant les infos de l'utilisateur
     * @return Entité créée
     * @throws UserAlreadyExistException si l'utilisateur existe déjà
     */
    public User registerNewUserAccount(UserDto userDto) throws UserAlreadyExistException {

        Boolean exists = userRepository.findByUsername(userDto.getUsername()) != null;
        if (exists) {
            throw new UserAlreadyExistException("An user already exist with that username: " + userDto.getUsername());
        }
        User user = new User(userDto);
        return userRepository.save(user);
    }

    public User getUserByToken(String userToken) {
        String username = jwttp.getUsernameFromToken(removeTokenPrefix(userToken));
        return userRepository.findByUsername(username);
    }

    public String removeTokenPrefix(String token){
        return token.substring(PREFIX_BEARER.length());
    }
}
