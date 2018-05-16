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
    @Temporal(value = TemporalType.DATE)
    private Date departureDate;

    @Min(1)
    private int nightsAmount;

    @Min(1)
    private int adultsAmount;

    @Min(1)
    private long price;

    private String foodType;
}
