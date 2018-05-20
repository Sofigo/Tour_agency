package my.web.application.dao;

import org.hibernate.LockMode;

import java.io.Serializable;
import java.util.List;


public interface GenericDAO<T, ID extends Serializable> {

    T findById(ID id);
    T findById(ID id, LockMode lockMode);


    void persist(T t);
    void update(T t);

    void remove(ID id);

    List<T> findAll();


}
