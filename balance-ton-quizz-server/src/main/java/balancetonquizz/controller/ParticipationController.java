package balancetonquizz.controller;

import balancetonquizz.dto.CreateParticipationDto;
import balancetonquizz.dto.ScoreDto;
import balancetonquizz.entities.Participation;
import balancetonquizz.service.ParticipationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin
public class ParticipationController {

    @Autowired
    ParticipationService participationService;

    @PostMapping("/participation")
    public Participation registerParticipation(@RequestBody CreateParticipationDto p, @RequestHeader(value="Authorization") String authToken){
        return participationService.registerParticipation(p, authToken);
    }
}
