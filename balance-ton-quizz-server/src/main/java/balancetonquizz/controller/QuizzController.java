package balancetonquizz.controller;

import balancetonquizz.entities.*;
import balancetonquizz.exception.ThemeAlreadyExistException;
import balancetonquizz.repositories.QuizzRepository;
import balancetonquizz.service.ThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
public class QuizzController {

    @Autowired
    private QuizzRepository repo;

    @Autowired
    private ThemeService themeService;

    @GetMapping("/quizzes")
    public Iterable<Quizz> getAllQuizz(){
        return repo.findAll();
    }

    @GetMapping("/quizzes/{id}")
    public Quizz getQuizzById(@PathVariable Long id){
        return repo.findById(id).isPresent() ? repo.findById(id).get() : null;
    }

    @GetMapping("/quizzes/theme/{id}")
    public List<Quizz> getQuizzByTheme(@PathVariable Long id){
        return repo.findByThemeId(id);
    }

    @GetMapping("/quizzes/randomQuizz")
    public void createQuizz() throws ThemeAlreadyExistException {
        Quizz q1 = new Quizz("Ludo le rageux", "AlexLeBG", themeService.registerNewTheme("Rage"));
        TextQuestion question = new TextQuestion("Ludo est-il un rageux ?", true);
        Answer answer1 = new Answer("Vrai", true);
        Answer answer2 = new Answer("Vrai", true);
        Answer answer3 = new Answer("Vrai", true);
        Answer answer4 = new Answer("Vrai", true);

        question.addAnswer(answer1);
        question.addAnswer(answer2);
        question.addAnswer(answer3);
        question.addAnswer(answer4);

        q1.addQuestion(question);

        repo.save(q1);

    }

}
