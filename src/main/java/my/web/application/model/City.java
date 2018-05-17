package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Entity
public class City {
    @Id
    @Column(name="city_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "city", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Collection<Hotel> hotels = new ArrayList<>();

    private String name;

    private String image;
}
