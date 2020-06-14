package balancetonquizz.controller;

import balancetonquizz.dto.CreateParticipationDto;
import balancetonquizz.dto.ScoreDto;
import balancetonquizz.entities.Participation;
import balancetonquizz.entities.Quizz;
import balancetonquizz.repositories.ParticipationRepository;
import balancetonquizz.service.ParticipationService;
import balancetonquizz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ParticipationController {

    @Autowired
    ParticipationService participationService;

    @Autowired
    ParticipationRepository participationRepository;

    @Autowired
    UserService userService;

    @PostMapping("/participation")
    public Participation registerParticipation(@RequestBody CreateParticipationDto p, @RequestHeader(value="Authorization") String authToken){
        return participationService.registerParticipation(p, authToken);
    }

    @GetMapping("/participation/user")
    public List<Participation> getUserParticipation(@RequestHeader(value="Authorization") String authToken){
        return participationRepository.findByPlayer(userService.getUserByToken(authToken));
    }

    @GetMapping("/participation/quizz/{quizzId}")
    public List<Participation> getQuizzParticipation(@PathVariable Long quizzId){
        return participationRepository.findByQuizzId(quizzId);
    }
}
