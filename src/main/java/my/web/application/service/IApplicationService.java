package my.web.application.service;

import my.web.application.model.Application;
import my.web.application.model.User;
import org.hibernate.LockMode;

public interface IApplicationService {

    public Application findById(Long id);
    public Application findById(Long id, LockMode lockMode);


    public void persist(Application a);
    public void update(Application a);

    public void remove(Long id);

}
