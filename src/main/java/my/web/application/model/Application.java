package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
public class Application implements Serializable{
    @Id
    @Column(name="application_id")
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    //@JoinColumn(name = "USER_ID", nullable = false) this is optional
    private User user;

    public Application() {

    }


    public long getId() {
        return id;
    }
}
