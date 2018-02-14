package my.web.application.dao;

import org.hibernate.LockMode;

import java.io.Serializable;


public interface GenericDAO<T, ID extends Serializable> {

    public T findById(ID id);
    public T findById(ID id, LockMode lockMode);


    public void persist(T t);
    public void update(T t);

    public void remove(ID id);


}
