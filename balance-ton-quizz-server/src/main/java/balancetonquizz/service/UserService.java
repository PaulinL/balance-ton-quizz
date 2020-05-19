package balancetonquizz.service;

import balancetonquizz.dto.UserDto;
import balancetonquizz.entities.User;
import balancetonquizz.exception.UserAlreadyExistException;
import balancetonquizz.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    /**
     * Enregistre un nouvel utilisateur en BD
     * @param userDto contenant les infos de l'utilisateur
     * @return Entité créée
     * @throws UserAlreadyExistException si l'utilisateur existe déjà
     */
    public User registerNewUserAccount(UserDto userDto) throws UserAlreadyExistException {

        Boolean exists = userRepository.findByUsername(userDto.getUsername()) != null;
        if (exists) {
            throw new UserAlreadyExistException("There is an account with that email address: " + userDto.getUsername());
        }
        User user = new User(userDto);
        return userRepository.save(user);
    }
}
