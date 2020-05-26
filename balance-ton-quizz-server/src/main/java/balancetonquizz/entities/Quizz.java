package balancetonquizz.entities;

import lombok.Data;

import javax.annotation.Nullable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
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
    private String imageName;

    public Quizz() {
    }

    public Quizz(String title, User author, String description, Theme theme, String imageName) {
        this.title = title;
        this.author = author;
        this.description = description;
        this.questions = new ArrayList<Question>();
        this.theme = theme;
	    this.imageName = imageName;
    }

    public void addQuestion(Question e){
        this.questions.add(e);
    }

    public void removeQuestion(int index){
        this.questions.remove(index);
    }
}
