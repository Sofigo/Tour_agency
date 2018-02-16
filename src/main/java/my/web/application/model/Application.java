package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Entity
public class Application implements Serializable {
    @Id
    @Column(name="application_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    private User user;

    @ManyToMany
    @JoinTable(
            name = "application_tour",
            joinColumns = @JoinColumn(name = "application_id"),
            inverseJoinColumns = @JoinColumn(name = "tour_id")
    )
    protected Collection<Tour> tours = new ArrayList<>();

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



    public Application() {

    }


    public long getId() {
        return id;
    }
}
