package balancetonquizz.repositories;

import balancetonquizz.entities.Answer;
import balancetonquizz.entities.Question;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Long> {

}
