package my.web.application.service.impl;

import my.web.application.dao.ITourDAO;
import my.web.application.model.Tour;
import my.web.application.service.ITourService;
import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class TourServiceImpl implements ITourService {
    private ITourDAO tourDAO;

    @Autowired
    public TourServiceImpl(ITourDAO tourDAO) {
        this.tourDAO = tourDAO;
    }

    @Override
    @Transactional
    public void persist(Tour u) {
        tourDAO.persist(u);
    }

    @Override
    @Transactional
    public void update(Tour u) {
        tourDAO.update(u);
    }

    @Override
    @Transactional
    public Tour findById(Long id) {
        return tourDAO.findById(id);
    }

    @Override
    @Transactional
    public Tour findById(Long id, LockMode lockMode) {
        return tourDAO.findById(id, lockMode);
    }

    @Override
    @Transactional
    public void remove(Long id) {
        tourDAO.remove(id);
    }

    @Override
    @Transactional
    public List<String> getAllDepartureAirports() {
        return tourDAO.findAllDepartureAirports();
    }

    @Override
    @Transactional
    public List<String> getAllFoodTypes() {
        return tourDAO.getAllFoodTypes();
    }

    @Override
    @Transactional
    public List<Tour> searchTours(String airport, String city, Integer price, Integer stars, String food, Date date) {
        return tourDAO.searchTours(airport, city, price, stars, food, date);
    }


}
