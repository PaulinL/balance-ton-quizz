package balancetonquizz.repositories;

import balancetonquizz.entities.Participation;
import balancetonquizz.entities.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ParticipationRepository extends CrudRepository<Participation, Long> {
    List<Participation> findByPlayer(User player);
}
