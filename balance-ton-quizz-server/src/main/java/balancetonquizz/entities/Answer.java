package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Answer {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    private String label;
    private boolean isCorrect;

    public Answer(){}

    public Answer(String label, boolean isCorrect) {
        this.label = label;
        this.isCorrect = isCorrect;
    }
}


