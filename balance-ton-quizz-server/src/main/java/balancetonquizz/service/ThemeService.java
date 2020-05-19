package balancetonquizz.service;

import balancetonquizz.dto.UserDto;
import balancetonquizz.entities.Theme;
import balancetonquizz.entities.User;
import balancetonquizz.exception.ThemeAlreadyExistException;
import balancetonquizz.exception.UserAlreadyExistException;
import balancetonquizz.repositories.ThemeRepository;
import balancetonquizz.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ThemeService {

    @Autowired
    private ThemeRepository themeRepository;

    /**
     * Enregistre un nouve theme en BD.
     * @param themeName contenant la chaine de caractère du theme.
     * @return Entité créée
     * @throws ThemeAlreadyExistException si l'utilisateur existe déjà
     */
    public Theme registerNewTheme(String themeName) throws ThemeAlreadyExistException {

        Boolean exists = themeRepository.findByTitle(themeName.toLowerCase()) != null;
        if (exists) {
            throw new ThemeAlreadyExistException("A theme already exist with that title: " + themeName);
        }
        Theme theme = new Theme(themeName.toLowerCase());
        return themeRepository.save(theme);
    }
}