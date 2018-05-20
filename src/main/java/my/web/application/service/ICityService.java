package my.web.application.service;

import my.web.application.model.City;
import org.hibernate.LockMode;

import java.util.List;

public interface ICityService {

    City findById(Long id);

    City findById(Long id, LockMode lockMode);


    void persist(City a);

    void update(City a);

    void remove(Long id);

    List<City> getAll();

    List<String> getAllCityNames();

    List<City> getCitiesWithHotelsAndTours();

}
