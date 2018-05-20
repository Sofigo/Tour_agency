package my.web.application.service.impl;

import my.web.application.dao.IHotelDAO;
import my.web.application.model.Hotel;
import my.web.application.service.IHotelService;
import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class HotelServiceImpl implements IHotelService {
    private IHotelDAO hotelDAO;

    @Autowired
    public HotelServiceImpl(IHotelDAO hotelDAO) {
        this.hotelDAO = hotelDAO;
    }

    @Override
    @Transactional
    public void persist(Hotel u) {
        hotelDAO.persist(u);
    }

    @Override
    @Transactional
    public void update(Hotel u) {
        hotelDAO.update(u);
    }

    @Override
    @Transactional
    public Hotel findById(Long id) {
        return hotelDAO.findById(id);
    }

    @Override
    @Transactional
    public Hotel findById(Long id, LockMode lockMode) {
        return hotelDAO.findById(id, lockMode);
    }

    @Override
    @Transactional
    public void remove(Long id) {
        hotelDAO.remove(id);
    }

    @Override
    @Transactional
    public List<Hotel> getAll() {
        return hotelDAO.findAll();
    }

    @Override
    @Transactional
    public List<Hotel> getHotelsWithTours() {
        return hotelDAO.getHotelsWithTours();
    }


}
