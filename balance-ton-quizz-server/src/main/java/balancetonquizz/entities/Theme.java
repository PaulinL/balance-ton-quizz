package balancetonquizz.entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Theme {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private long id;
    public String title;

    public Theme(){}

    public Theme(String title){
        this.title = title.toLowerCase();
    }
}
