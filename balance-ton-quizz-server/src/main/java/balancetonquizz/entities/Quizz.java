package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class Quizz {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    private String title;
    private String creator;
    private String description;
    @ManyToOne(cascade=CascadeType.ALL)
    private Theme theme;
    @OneToMany(cascade=CascadeType.ALL)
    private List<Question> questions;

    public Quizz() {
    }

    public Quizz(String title, String creator, String description, Theme theme) {
        this.title = title;
        this.creator = creator;
        this.description = description;
        this.questions = new ArrayList<Question>();
        this.theme = theme;
    }

    public void addQuestion(Question e){
        this.questions.add(e);
    }

    public void removeQuestion(int index){
        this.questions.remove(index);
    }

    public void contactCreator(){}
}
