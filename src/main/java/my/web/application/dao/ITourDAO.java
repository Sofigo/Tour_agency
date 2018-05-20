package my.web.application.dao;

import my.web.application.model.Tour;

import java.util.Date;
import java.util.List;

public interface ITourDAO extends GenericDAO<Tour, Long> {

    List<String> findAllDepartureAirports();

    List<String> getAllFoodTypes();

    List<Tour> searchTours(String airport, String city, Integer price, Integer stars, String food, Date date);
}
