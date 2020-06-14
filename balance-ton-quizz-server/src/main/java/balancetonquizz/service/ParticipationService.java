package balancetonquizz.service;

import balancetonquizz.dto.CreateParticipationDto;
import balancetonquizz.dto.QuestionAnswerDto;
import balancetonquizz.dto.ScoreDto;
import balancetonquizz.entities.Answer;
import balancetonquizz.entities.Question;
import balancetonquizz.entities.Participation;
import balancetonquizz.entities.QuestionAnswer;
import balancetonquizz.entities.Quizz;
import balancetonquizz.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@Service
public class ParticipationService {
    @Autowired
    private UserService userService;

    @Autowired
    private QuizzRepository quizzRepository;

    @Autowired
    private ParticipationRepository participationRepository;

    @Autowired
    private AnswerRepository answerRepository;

    @Autowired
    private QuestionRepository questionRepository;

    public Participation registerParticipation(CreateParticipationDto cp, String token) {
        Participation p = new Participation();
        Quizz quizz = quizzRepository.findById(cp.getQuizzId()).orElse(null);

        Objects.requireNonNull(quizz);

        p.setQuizz(quizz);
        p.setPlayer(userService.getUserByToken(token));
        p.setNbTotalQuestions(quizz.getQuestions().size());
        p.setNbCorrectAnswers(scoreCompute(resolveQuestionAnswer(cp), quizz));

        return participationRepository.save(p);
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
            if (questionCorrect) {
                score++;
            }
        }
        return score;
    }

    public List<QuestionAnswer> resolveQuestionAnswer(CreateParticipationDto cp) {
        List<QuestionAnswer> questionAnswers = new ArrayList<>();
        for (QuestionAnswerDto qa : cp.getQuestionAnswers()) {
            List<Answer> answers = StreamSupport.stream(this.answerRepository.findAllById(qa.getAnswers()).spliterator(), false)
                    .collect(Collectors.toList());
            QuestionAnswer temp = new QuestionAnswer();
            temp.setAnswers(answers);
            temp.setQuestion(this.questionRepository.findById(qa.getQuestionId()).orElse(null));
            questionAnswers.add(temp);
        }
        return questionAnswers;
    }
}
