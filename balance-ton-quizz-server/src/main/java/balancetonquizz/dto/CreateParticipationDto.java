package balancetonquizz.dto;

import balancetonquizz.entities.QuestionAnswer;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public class CreateParticipationDto {
    @NotNull
    @NotEmpty
    private Long quizzId;

    @NotNull
    @NotEmpty
    private List<QuestionAnswer> questionAnswers;
}
