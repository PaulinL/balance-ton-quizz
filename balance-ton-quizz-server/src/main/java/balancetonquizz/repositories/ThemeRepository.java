package balancetonquizz.repositories;

import balancetonquizz.entities.Theme;
import org.springframework.data.repository.CrudRepository;

public interface ThemeRepository extends CrudRepository<Theme, Long> {
    Theme findByTitle(String title);
}
