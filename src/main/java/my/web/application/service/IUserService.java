package my.web.application.service;

import my.web.application.model.User;
import org.hibernate.LockMode;

public interface IUserService {

    public User findById(Long id);
    public User findById(Long id, LockMode lockMode);


    public void persist(User t);
    public void update(User t);

    public void remove(Long id);

}
