package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class Question {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    private String label;
    private boolean multiple;
    @OneToMany(cascade=CascadeType.ALL)
    private List<Answer> answers;

    public Question(){}

    public Question(String label, boolean multiple) {
        this.label = label;
        this.multiple = multiple;
        this.answers = new ArrayList<Answer>();
    }
}
