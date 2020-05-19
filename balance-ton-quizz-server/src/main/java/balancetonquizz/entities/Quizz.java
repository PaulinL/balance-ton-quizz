package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Quizz {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    private String title;
    private String creator;
    @OneToMany
    private List<Question> questions;

    public Quizz() {
    }

    public Quizz(String title, String creator, List<Question> questions) {
        this.title = title;
        this.creator = creator;
        this.questions = questions;
    }

    public void addQuestion(Question e){
        this.questions.add(e);
    }

    public void removeQuestion(int index){
        this.questions.remove(index);
    }

    public void contactCreator(){}
}
