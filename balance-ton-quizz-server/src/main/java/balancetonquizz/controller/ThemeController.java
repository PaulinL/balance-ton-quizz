package balancetonquizz.controller;

import balancetonquizz.entities.Theme;
import balancetonquizz.repositories.ThemeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class ThemeController {

    @Autowired
    private ThemeRepository repo;

    @GetMapping("/themes")
    public Iterable<Theme> getAllTheme(){
        return repo.findAll();
    }

    @GetMapping("/themes/{id}")
    public Theme getThemeById(@PathVariable Long id){
        return repo.findById(id).isPresent() ? repo.findById(id).get() : null;
    }

    @PostMapping("/themes")
    public Long createTheme(@RequestBody Theme theme) {
        return repo.save(theme).getId();
    }

    @PutMapping("/themes")
    public void updateTheme(Theme theme){
        repo.save(theme);
    }

    @DeleteMapping("/themes/{id}")
    public ResponseEntity.BodyBuilder deleteThemeId(@PathVariable Long id){
        repo.deleteById(id);
        return ResponseEntity.ok();
    }
}
