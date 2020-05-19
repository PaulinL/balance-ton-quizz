package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
abstract class Question {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    private String label;
    private boolean multiple;

    public Question(){}

    public Question(String label, boolean multiple) {
        this.label = label;
        this.multiple = multiple;
    }
}
