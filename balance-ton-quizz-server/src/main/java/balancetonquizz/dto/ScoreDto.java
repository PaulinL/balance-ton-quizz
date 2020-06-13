package balancetonquizz.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class ScoreDto {
    @NotNull
    @NotEmpty
    private int nbCorrectQuestions;

    @NotNull
    @NotEmpty
    private int nbTotalQuestions;

    @NotNull
    @NotEmpty
    private Long participationId;

    @NotNull
    @NotEmpty
    private Long quizzId;
}
