package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Min;
import javax.validation.constraints.Max;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Hotel implements Serializable {
    @Id
    @Column(name="country_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    private City city;

    @OneToMany(mappedBy = "hotel", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Set<Room> rooms = new HashSet<>();

    @NotNull
    private String name;

    @Min(1)
    @Max(5)
    private int starsAmount;


}
