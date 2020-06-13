package balancetonquizz.controller;

import balancetonquizz.dto.CreateParticipationDto;
import balancetonquizz.dto.ScoreDto;
import balancetonquizz.entities.Participation;
import balancetonquizz.service.ParticipationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;

public class ParticipationController {

    @Autowired
    ParticipationService participationService;

    @PostMapping("/participation")
    public ScoreDto registerParticipation(@RequestBody CreateParticipationDto p, @RequestHeader(value="Authorization") String authToken){
        return participationService.registerParticipation(p, authToken);
    }


}
