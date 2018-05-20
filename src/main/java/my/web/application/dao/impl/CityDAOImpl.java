package my.web.application.dao.impl;

import my.web.application.dao.ICityDAO;
import my.web.application.model.City;
import javax.persistence.criteria.JoinType;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Repository
public class CityDAOImpl extends GenericDAOImpl<City, Long> implements ICityDAO {

    public CityDAOImpl() {
        super(City.class);
    }

    @Override
    public List<String> getAllCityNames() {
        CriteriaQuery<String> criteria = sessionFactory.getCriteriaBuilder().createQuery(String.class);
        criteria.select(
                criteria.from(City.class).<String>get("name")
        );

        criteria.distinct(true);

        return sessionFactory.getCurrentSession().createQuery(criteria).getResultList();
    }

    @Override
    public List<City> getCitiesWithHotelsAndTours() {
        Query<City> query = sessionFactory.getCurrentSession().createQuery("select c from City c\n" +
                "inner join fetch c.hotels h\n" +
                "inner join fetch h.tours\n", City.class);

        return query.getResultList();
    }
}
