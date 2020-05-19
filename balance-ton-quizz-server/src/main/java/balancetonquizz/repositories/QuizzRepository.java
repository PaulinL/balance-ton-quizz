package balancetonquizz.repositories;

import balancetonquizz.entities.Quizz;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizzRepository extends CrudRepository<Quizz, Long> {
    List<Quizz> findByThemeId(Long id);
}
