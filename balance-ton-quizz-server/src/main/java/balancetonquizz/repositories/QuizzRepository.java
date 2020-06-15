package balancetonquizz.repositories;

import balancetonquizz.entities.Quizz;
import balancetonquizz.entities.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuizzRepository extends CrudRepository<Quizz, Long> {

    List<Quizz> findByThemeId(Long id);

    List<Quizz> findByAuthor(User user);

    @Query(nativeQuery=true, value="SELECT * FROM quizz ORDER BY RAND() LIMIT 1")
    Quizz findRandomQuizz();
}
