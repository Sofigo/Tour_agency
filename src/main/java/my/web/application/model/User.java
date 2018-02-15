package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

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

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
    @org.hibernate.annotations.OnDelete(
            action = org.hibernate.annotations.OnDeleteAction.CASCADE
    )
    private Set<Application> applications = new HashSet<>();

    public void addApplication(Application application) {
        application.setUser(this);
        applications.add(application);
    }

    public User() {

    }


    public long getId() {
        return id;
    }
}
