package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class QuestionAnswer {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;

    @OneToOne
    private Question question;

    @OneToMany(cascade=CascadeType.ALL)
    private List<Answer> answers;

}
