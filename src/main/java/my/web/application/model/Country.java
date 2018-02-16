package my.web.application.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;

@Entity
public class Country implements Serializable {
    @Id
    @Column(name="country_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "country", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Collection<City> cities = new ArrayList<>();

    private String name;


}
