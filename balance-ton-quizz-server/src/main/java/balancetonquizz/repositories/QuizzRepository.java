package balancetonquizz.repositories;

import balancetonquizz.entities.Quizz;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuizzRepository extends CrudRepository<Quizz, Long> {
}
