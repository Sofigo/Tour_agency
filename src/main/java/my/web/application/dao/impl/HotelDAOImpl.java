package my.web.application.dao.impl;

import my.web.application.dao.IHotelDAO;
import my.web.application.model.City;
import my.web.application.model.Hotel;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class HotelDAOImpl extends GenericDAOImpl<Hotel, Long> implements IHotelDAO {

    public HotelDAOImpl() {
        super(Hotel.class);
    }

    @Override
    public List<Hotel> getHotelsWithTours() {
        Query<Hotel> query = sessionFactory.getCurrentSession().createQuery("select h from Hotel h\n" +
                "inner join fetch h.tours\n", Hotel.class);

        return query.getResultList();
    }
}
