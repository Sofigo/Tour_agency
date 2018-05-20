package my.web.application.dao.impl;

import my.web.application.dao.GenericDAO;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.criteria.CriteriaQuery;
import java.io.Serializable;
import java.util.List;

public abstract class GenericDAOImpl<T, ID extends Serializable> implements GenericDAO<T, ID> {
    @Autowired
    protected SessionFactory sessionFactory;
    protected final Class<T> entityClass;

    public Session getSession() {
        Session session = this.sessionFactory.getCurrentSession();
        return session;
    }

    protected GenericDAOImpl(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @Override
    public T findById(ID id) {
        return findById(id, LockMode.NONE);
    }

    @Override
    public T findById(ID id, LockMode lockMode) {
        return getSession().load(entityClass, id, lockMode);//analogue EntityManager#find
    }

    @Override
    public void persist(T t) {
        getSession().persist(t);
    }

    @Override
    public void update(T t) {
        getSession().update(t);
    }

    @Override
    public void remove(ID id) {
        Session session = getSession();
        T t = session.load(entityClass, id);
        if (t != null) {
            session.delete(t);
        }
    }

    @Override
    public List<T> findAll() {
        CriteriaQuery<T> c = sessionFactory.getCriteriaBuilder().createQuery(entityClass);
        c.select(c.from(entityClass));
        return sessionFactory.getCurrentSession().createQuery(c).getResultList();
    }



}
