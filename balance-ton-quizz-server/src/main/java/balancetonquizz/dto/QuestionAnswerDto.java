package balancetonquizz.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.util.List;

@Data
public
class QuestionAnswerDto {
    @NotNull
    @NotEmpty
    private Long questionId;

    @NotNull
    @NotEmpty
    private List<Long> answers;
}