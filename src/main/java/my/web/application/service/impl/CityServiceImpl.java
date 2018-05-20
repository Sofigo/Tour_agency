package my.web.application.service.impl;

import my.web.application.dao.ICityDAO;
import my.web.application.model.City;
import my.web.application.service.ICityService;
import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CityServiceImpl implements ICityService {
    private ICityDAO cityDAO;

    @Autowired
    public CityServiceImpl(ICityDAO cityDAO) {
        this.cityDAO = cityDAO;
    }

    @Override
    @Transactional
    public void persist(City u) {
        cityDAO.persist(u);
    }

    @Override
    @Transactional
    public void update(City u) {
        cityDAO.update(u);
    }

    @Override
    @Transactional
    public City findById(Long id) {
        return cityDAO.findById(id);
    }

    @Override
    @Transactional
    public City findById(Long id, LockMode lockMode) {
        return cityDAO.findById(id, lockMode);
    }

    @Override
    @Transactional
    public void remove(Long id) {
        cityDAO.remove(id);
    }

    @Override
    @Transactional
    public List<City> getAll() {
        return cityDAO.findAll();
    }

    @Override
    @Transactional
    public List<String> getAllCityNames() {
        return cityDAO.getAllCityNames();
    }

    @Override
    @Transactional
    public List<City> getCitiesWithHotelsAndTours() {
        return cityDAO.getCitiesWithHotelsAndTours();
    }


}
