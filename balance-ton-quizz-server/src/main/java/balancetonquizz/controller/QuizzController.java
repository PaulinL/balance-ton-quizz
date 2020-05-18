package balancetonquizz.controller;

import balancetonquizz.entities.Quizz;
import balancetonquizz.repositories.QuizzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QuizzController {

    @Autowired
    private QuizzRepository repo;

    @GetMapping("/quizz")
    public Iterable<Quizz> getQuizz(){
        return repo.findAll();
    }


}
