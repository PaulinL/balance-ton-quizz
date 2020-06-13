package balancetonquizz.controller;

import balancetonquizz.dto.QuizzDto;
import balancetonquizz.entities.*;
import balancetonquizz.repositories.QuizzRepository;
import balancetonquizz.service.QuizzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class QuizzController {

    @Autowired
    private QuizzRepository quizzRepository;

    @Autowired
    private QuizzService quizzService;

    @GetMapping("/quizzes")
    public Iterable<Quizz> getAllQuizz(){
        return quizzRepository.findAll();
    }

    @GetMapping("/quizzes/{id}")
    public Quizz getQuizzById(@PathVariable Long id){
        return quizzRepository.findById(id).isPresent() ? quizzRepository.findById(id).get() : null;
    }

    @GetMapping("/quizzes/theme/{id}")
    public List<Quizz> getQuizzByTheme(@PathVariable Long id){
        return quizzRepository.findByThemeId(id);
    }

    @PostMapping("/quizzes")
    public QuizzDto createQuizz(@RequestBody Quizz q, @RequestHeader(value="Authorization") String authToken){
        return quizzService.saveNewQuizz(q, authToken);
    }

    @PutMapping("/quizzes")
    public void updateQuizz(Quizz q){
        quizzRepository.save(q);
    }

    @DeleteMapping("/quizzes/{id}")
    public ResponseEntity.BodyBuilder deleteQuizzId(@PathVariable Long id){
        quizzRepository.deleteById(id);
        return ResponseEntity.ok();
    }

    @GetMapping("/quizzes/random")
    public Long getRandomQuizz(){
        return quizzRepository.findRandomQuizz().getId();
    }

}
