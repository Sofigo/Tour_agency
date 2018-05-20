package my.web.application.dao.impl;

import my.web.application.dao.ITourDAO;
import my.web.application.model.City;
import my.web.application.model.Hotel;
import my.web.application.model.Tour;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class TourDAOImpl extends GenericDAOImpl<Tour, Long> implements ITourDAO {

    public TourDAOImpl() {
        super(Tour.class);
    }

    @Override
    public List<String> findAllDepartureAirports() {
        CriteriaQuery<String> criteria = sessionFactory.getCriteriaBuilder().createQuery(String.class);
        criteria.select(
                criteria.from(Tour.class).<String>get("departureAirport")
        );
        criteria.distinct(true);

        return sessionFactory.getCurrentSession().createQuery(criteria).getResultList();
    }

    @Override
    public List<String> getAllFoodTypes() {
        CriteriaQuery<String> criteria = sessionFactory.getCriteriaBuilder().createQuery(String.class);
        criteria.select(
                criteria.from(Tour.class).<String>get("foodType")
        );
        criteria.distinct(true);

        return sessionFactory.getCurrentSession().createQuery(criteria).getResultList();
    }

    @Override
    public List<Tour> searchTours(String airport, String city, Integer price, Integer stars, String food, Date date) {
        CriteriaQuery<Tour> criteria = sessionFactory.getCriteriaBuilder().createQuery(Tour.class);
        Root<Tour> tourRoot = criteria.from(Tour.class);
        criteria.select(tourRoot);

        List<Predicate> predicates = new ArrayList<>();
        if (!StringUtils.isEmpty(airport)) {
            predicates.add(sessionFactory.getCriteriaBuilder().equal(tourRoot.<String>get("departureAirport"), airport));
        }
        if (!StringUtils.isEmpty(city)) {
            predicates.add(sessionFactory.getCriteriaBuilder().equal(tourRoot.<Hotel>get("hotel").<City>get("city").<String>get("name"), city));
        }
        if (!StringUtils.isEmpty(food)) {
            predicates.add(sessionFactory.getCriteriaBuilder().equal(tourRoot.<String>get("foodType"), food));
        }
        if (!StringUtils.isEmpty(price)) {
            predicates.add(sessionFactory.getCriteriaBuilder().lessThanOrEqualTo(tourRoot.<Integer>get("price"), price));
        }
        if (!StringUtils.isEmpty(stars)) {
            predicates.add(sessionFactory.getCriteriaBuilder().equal(tourRoot.<Hotel>get("hotel").<String>get("starsAmount"), stars));
        }
        if (date != null) {
            predicates.add(sessionFactory.getCriteriaBuilder().equal(tourRoot.<Date>get("departureDate"), date));
        }

        criteria.where(
                sessionFactory.getCriteriaBuilder().and(predicates.toArray(new Predicate[predicates.size()]))
        );


        return sessionFactory.getCurrentSession().createQuery(criteria).getResultList();
    }
}
