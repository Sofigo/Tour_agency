package my.web.application.dao;

import my.web.application.model.City;

import java.util.List;

public interface ICityDAO extends GenericDAO<City, Long> {

    List<String> getAllCityNames();

    List<City> getCitiesWithHotelsAndTours();
}
