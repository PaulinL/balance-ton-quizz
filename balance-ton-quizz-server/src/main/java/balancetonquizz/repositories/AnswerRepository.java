package balancetonquizz.repositories;

import balancetonquizz.entities.Answer;
import balancetonquizz.entities.Quizz;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerRepository extends CrudRepository<Answer, Long> {

}
