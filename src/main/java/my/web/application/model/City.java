package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
public class City implements Serializable {
    @Id
    @Column(name="city_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "city", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Set<Hotel> hotels = new HashSet<>();

    private String name;

    private String image;

    public Collection<Hotel> getHotels() {
        return hotels;
    }

    public void setHotels(Set<Hotel> hotels) {
        this.hotels = hotels;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public long getId() {
        return id;
    }
}
