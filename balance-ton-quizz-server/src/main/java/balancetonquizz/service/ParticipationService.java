package balancetonquizz.service;

import balancetonquizz.dto.CreateParticipationDto;
import balancetonquizz.dto.ScoreDto;
import balancetonquizz.entities.Answer;
import balancetonquizz.entities.Question;
import balancetonquizz.entities.Participation;
import balancetonquizz.entities.QuestionAnswer;
import balancetonquizz.entities.Quizz;
import balancetonquizz.repositories.ParticipationRepository;
import balancetonquizz.repositories.QuizzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;

@Service
public class ParticipationService {
    @Autowired
    private UserService userService;

    @Autowired
    private QuizzRepository quizzRepository;

    @Autowired
    private ParticipationRepository participationRepository;

    public ScoreDto registerParticipation(CreateParticipationDto cp, String token) {
        Participation p = new Participation();
        p.setQuizz(quizzRepository.findById(cp.getQuizzId()).orElse(null));
        p.setPlayer(userService.getUserByToken(token));
        p.setQuestionAnswers(cp.getQuestionAnswers());

        ScoreDto scoreDto = new ScoreDto();
        scoreDto.setParticipationId(participationRepository.save(p).getId());
        scoreDto.setQuizzId(p.getId());
        scoreDto.setNbTotalQuestions(cp.getQuestionAnswers().size());
        scoreDto.setNbCorrectQuestions(scoreCompute(cp.getQuestionAnswers(), p.getQuizz()));
        return scoreDto;
    }

    public int scoreCompute(List<QuestionAnswer> questionAnswers, Quizz q) {
        Objects.requireNonNull(q);
        int score = 0;
        for (QuestionAnswer qa : questionAnswers) {
            boolean questionCorrect = qa.getQuestion().getAnswers().stream()
                    .filter(Answer::isCorrect)
                    .allMatch(answer -> qa.getAnswers().contains(answer));
            for (Answer a : qa.getAnswers()) {
                if (!a.isCorrect()) {
                    questionCorrect = false;
                    break;
                }
            }
            if(questionCorrect){
                score++;
            }
        }
        return score;
    }
}
