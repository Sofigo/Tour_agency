package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Entity
public class Room implements Serializable {
    @Id
    @Column(name="room_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    private Hotel hotel;

    private String name;


}
