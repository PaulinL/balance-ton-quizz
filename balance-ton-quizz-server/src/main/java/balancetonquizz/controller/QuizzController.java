package balancetonquizz.controller;

import balancetonquizz.entities.*;
import balancetonquizz.exception.ThemeAlreadyExistException;
import balancetonquizz.repositories.QuizzRepository;
import balancetonquizz.service.ThemeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/quizzes")
    public void createQuizz(String title, String creator, String description, String theme) throws ThemeAlreadyExistException {
        Quizz q = new Quizz(title, creator, description, themeService.registerNewTheme(theme));
        repo.save(q);
    }

    @PutMapping("/quizzes")
    public void updateQuizz(Quizz q){
        repo.save(q);
    }

    @DeleteMapping("/quizzes")
    public void deleteQuizzId(@PathVariable Long id){
        repo.deleteById(id);
    }

}
