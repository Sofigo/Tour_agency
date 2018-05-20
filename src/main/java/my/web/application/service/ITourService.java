package my.web.application.service;

import my.web.application.model.Tour;
import org.hibernate.LockMode;

import java.util.Date;
import java.util.List;

public interface ITourService {

    Tour findById(Long id);

    Tour findById(Long id, LockMode lockMode);


    void persist(Tour a);

    void update(Tour a);

    void remove(Long id);

    List<String> getAllDepartureAirports();

    List<String> getAllFoodTypes();

    List<Tour> searchTours(String airport, String city, Integer price, Integer stars, String food, Date date);
}
