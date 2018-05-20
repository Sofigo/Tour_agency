package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Hotel implements Serializable {
    @Id
    @Column(name="hotel_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @OneToMany(mappedBy = "hotel", fetch = FetchType.LAZY, cascade = { CascadeType.PERSIST, CascadeType.MERGE } )
    private Set<Tour> tours = new HashSet<>();

    @NotNull
    private String name;

    @Min(1)
    @Max(5)
    private int starsAmount;

    private String image;

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)
    private City city;

    public Collection<Tour> getTours() {
        return tours;
    }

    public void setTours(Set<Tour> tours) {
        this.tours = tours;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStarsAmount() {
        return starsAmount;
    }

    public void setStarsAmount(int starsAmount) {
        this.starsAmount = starsAmount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public long getId() {
        return id;
    }
}
