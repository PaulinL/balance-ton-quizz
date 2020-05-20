package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
class Question {

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

    public void addAnswer(Answer e){
        this.answers.add(e);
    }

    public void removeAnswer(int index){
        this.answers.remove(index);
    }
}
