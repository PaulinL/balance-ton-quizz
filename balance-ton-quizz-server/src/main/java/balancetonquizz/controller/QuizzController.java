package balancetonquizz.controller;

import balancetonquizz.dto.QuizzDto;
import balancetonquizz.entities.*;
import balancetonquizz.repositories.QuizzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class QuizzController {

    @Autowired
    private QuizzRepository repo;

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

    @PostMapping("/quizzes")
    public QuizzDto createQuizz(@RequestBody Quizz q){
        QuizzDto res = new QuizzDto();
        res.setQuizzId(repo.save(q).getId());
        res.setQuizzUrl("/quizzes/" + res.getQuizzId());
        return res;
    }

    @PutMapping("/quizzes")
    public void updateQuizz(Quizz q){
        repo.save(q);
    }

    @DeleteMapping("/quizzes/{id}")
    public ResponseEntity.BodyBuilder deleteQuizzId(@PathVariable Long id){
        repo.deleteById(id);
        return ResponseEntity.ok();
    }

}
