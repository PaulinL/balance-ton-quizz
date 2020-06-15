package balancetonquizz.service;

import balancetonquizz.dto.QuizzDto;
import balancetonquizz.entities.Quizz;
import balancetonquizz.repositories.QuizzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class QuizzService {

    @Autowired
    private QuizzRepository quizzRepo;

    @Autowired
    private UserService userService;

    public QuizzDto saveNewQuizz(Quizz q, String token){
        q.setAuthor(userService.getUserByToken(token));
        QuizzDto quizzDto = new QuizzDto();
        quizzDto.setQuizzId(quizzRepo.save(q).getId());
        return quizzDto;
    }
}
