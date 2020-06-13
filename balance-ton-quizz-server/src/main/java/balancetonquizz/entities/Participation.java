package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Participation {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    @OneToMany(cascade=CascadeType.ALL)
    private List<QuestionAnswer> questionAnswers;

    @OneToOne
    private User player;

    @OneToOne
    private Quizz quizz;


}
