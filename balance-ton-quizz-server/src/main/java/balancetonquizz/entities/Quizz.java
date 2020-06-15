package balancetonquizz.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
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

    @ManyToOne(cascade =CascadeType.MERGE)
    private User author;

    private String description;

    @ManyToOne(cascade=CascadeType.MERGE)
    private Theme theme;

    @OneToMany(cascade=CascadeType.ALL)
    private List<Question> questions;

    private String imageName;

    public Quizz() {}

}
