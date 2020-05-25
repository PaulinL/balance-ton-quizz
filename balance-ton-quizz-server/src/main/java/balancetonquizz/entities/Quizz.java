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
    @ManyToOne(cascade =CascadeType.MERGE)
    private User author;
    private String description;
    @ManyToOne(cascade=CascadeType.MERGE)
    private Theme theme;
    @OneToMany(cascade=CascadeType.ALL)
    private List<Question> questions;
    @Column(nullable=true)
    private String imageName;

    public Quizz() {
    }

    public Quizz(String title, User author, String description, Theme theme) {
        this.title = title;
        this.author = author;
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
