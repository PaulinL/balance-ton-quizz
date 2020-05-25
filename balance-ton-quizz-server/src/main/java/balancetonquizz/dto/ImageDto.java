package balancetonquizz.dto;

import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Data
public class ImageDto {
    @NotNull
    @NotEmpty
    private String fileName;

    public ImageDto(@NotNull @NotEmpty String fileName) {
        this.fileName = fileName;
    }
}
