package balancetonquizz.entities;

import lombok.Data;
import lombok.Getter;

import javax.persistence.*;

@Data
@Entity
public class Theme {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    @Column(unique=true)
    private String title;
    @Column(nullable=true)
    private String imageName;

    public Theme(){}

    public Theme(String title){
        this.title = title.toLowerCase();
    }
}
