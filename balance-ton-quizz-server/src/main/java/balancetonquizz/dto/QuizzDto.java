package balancetonquizz.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class QuizzDto {
    @NotNull
    @NotEmpty
    private Long quizzId;
}
