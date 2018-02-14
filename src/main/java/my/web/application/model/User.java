package my.web.application.model;

import javax.persistence.*;

@Entity
public class User {
    @Id
    @Column(name="user_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    public User() {

    }


    public long getId() {
        return id;
    }
}
