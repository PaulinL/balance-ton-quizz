package balancetonquizz.entities;

import balancetonquizz.dto.UserDto;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column
    private String username;

    @Column
    @NotNull
    @JsonIgnore
    private String password;

    @Column
    private String imageUrl;

    @OneToMany(mappedBy = "author")
    @JsonManagedReference
    private List<Quizz> quizzList;

    public User(){
        this.quizzList = new ArrayList<>();
    }

    public User(UserDto userDto) {
        this();
        this.username = userDto.getUsername();
        this.password = userDto.getPassword();
    }
}
