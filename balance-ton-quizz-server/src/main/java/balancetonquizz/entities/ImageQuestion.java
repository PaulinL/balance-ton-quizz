package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class ImageQuestion extends Question {

    public ImageQuestion() {
        super();
    }

    public ImageQuestion(String label, boolean multiple) {
        super(label, multiple);
    }
}
