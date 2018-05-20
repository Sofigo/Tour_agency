package my.web.application.dao;

import my.web.application.model.Hotel;

import java.util.List;

public interface IHotelDAO extends GenericDAO<Hotel, Long> {

    List<Hotel> getHotelsWithTours();

}
