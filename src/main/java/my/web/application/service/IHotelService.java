package my.web.application.service;

import my.web.application.model.Hotel;
import org.hibernate.LockMode;

import java.util.List;

public interface IHotelService {

    Hotel findById(Long id);

    Hotel findById(Long id, LockMode lockMode);


    void persist(Hotel a);

    void update(Hotel a);

    void remove(Long id);

    List<Hotel> getAll();

    List<Hotel> getHotelsWithTours();
}
