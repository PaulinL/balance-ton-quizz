package balancetonquizz.entities;

import lombok.Data;
import org.w3c.dom.Text;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class TextQuestion extends Question {

    public TextQuestion() {
        super();
    }

    public TextQuestion(String label, boolean multiple) {
        super(label, multiple);
    }
}
