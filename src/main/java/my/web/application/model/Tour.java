package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Entity
public class Tour implements Serializable {

    @Id
    @Column(name="country_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    private Room room;

    @NotNull
    @Temporal(value = TemporalType.DATE)
    private Date departureDate;

    @NotNull
    @Temporal(value = TemporalType.DATE)
    private Date arrivalDate;

    @Min(1)
    private int nightsAmount;

    @Min(1)
    private int adultsAmount;

    @Min(0)
    private int kidsAmount;

    @Min(1)
    private long price;
}
