package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Entity
public class Hotel implements Serializable {
    @Id
    @Column(name="hotel_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "hotel", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Collection<Tour> tours = new ArrayList<>();

    @NotNull
    private String name;

    @Min(1)
    @Max(5)
    private int starsAmount;

    private String image;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    private City city;
}
