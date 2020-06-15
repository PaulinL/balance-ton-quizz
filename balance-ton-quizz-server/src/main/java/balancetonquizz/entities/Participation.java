package balancetonquizz.entities;

import com.fasterxml.jackson.annotation.JsonIdentityReference;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Participation {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    private int nbCorrectAnswers;

    private int nbTotalQuestions;

    @OneToOne
    private User player;

    @OneToOne
    private Quizz quizz;

}
