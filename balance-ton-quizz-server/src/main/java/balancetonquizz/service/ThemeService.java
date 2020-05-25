package balancetonquizz.service;

import balancetonquizz.entities.Theme;
import balancetonquizz.repositories.ThemeRepository;
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
     */
    public Theme registerNewTheme(String themeName) {

        Theme theme = themeRepository.findByTitle(themeName.toLowerCase());
        if (theme != null) {
            System.out.println("A theme already exist with that title: " + themeName);
            return theme;
        }
        Theme newTheme = new Theme(themeName.toLowerCase());
        return themeRepository.save(newTheme);
    }
}