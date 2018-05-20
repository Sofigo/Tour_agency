package my.web.application.model;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Entity
public class Tour implements Serializable {

    @Id
    @Column(name="tour_id")
    @GeneratedValue(generator = Constants.ID_GENERATOR)
    private long id;

    @NotNull
    @Temporal(value = TemporalType.DATE)
    private Date departureDate;

    private String departureAirport;

    @NotNull
    @ManyToOne(fetch = FetchType.EAGER)
    private Hotel hotel;

    @Min(1)
    private int nightsAmount;

    @Min(1)
    private int adultsAmount;

    @Min(1)
    private long price;

    private String foodType;

    public String getFoodType() {
        return foodType;
    }

    public void setFoodType(String foodType) {
        this.foodType = foodType;
    }

    public Date getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    public String getDepartureAirport() {
        return departureAirport;
    }

    public void setDepartureAirport(String departureAirport) {
        this.departureAirport = departureAirport;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public int getNightsAmount() {
        return nightsAmount;
    }

    public void setNightsAmount(int nightsAmount) {
        this.nightsAmount = nightsAmount;
    }

    public int getAdultsAmount() {
        return adultsAmount;
    }

    public void setAdultsAmount(int adultsAmount) {
        this.adultsAmount = adultsAmount;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public long getId() {
        return id;
    }
}
