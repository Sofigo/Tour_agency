package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
public class User implements Serializable{
    @Id
    @Column(name="user_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @Size(
            min = 2,
            max = 255,
            message = "Username is required, maximum 255 characters."
    )
    private String username;

    @NotNull
    private String password;

    @NotNull
    private String name;

    @NotNull
    private String surname;

    @NotNull
    private String passport;

    @NotNull
    private String phoneNumber;

    @NotNull
    private String email;

    public User() {

    }


    public long getId() {
        return id;
    }
}
