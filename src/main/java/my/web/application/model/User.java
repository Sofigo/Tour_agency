package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
public class User implements Serializable {
    @Id
    @Column(name="user_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Collection<Application> applications = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @Enumerated(EnumType.STRING)
    @JoinTable(name = "UserGrants", joinColumns = @JoinColumn(name = "user_id"))
    private Set<Grants> grants = new HashSet<>();

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



    public Set<Grants> getGrants() {
        return grants;
    }

    public void setGrants(Set<Grants> grants) {
        this.grants = grants;
    }



    public void addApplication(Application application) {
        application.setUser(this);
        applications.add(application);
    }

    public Collection<Application> getApplications() {
        return applications;
    }

    public User() {

    }


    public long getId() {
        return id;
    }
}
