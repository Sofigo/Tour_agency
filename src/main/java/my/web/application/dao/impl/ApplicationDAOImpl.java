package my.web.application.dao.impl;

import my.web.application.dao.IApplicationDAO;
import my.web.application.dao.IUserDAO;
import my.web.application.model.Application;
import my.web.application.model.User;
import org.springframework.stereotype.Repository;

@Repository
public class ApplicationDAOImpl extends GenericDAOImpl<Application, Long> implements IApplicationDAO {

    public ApplicationDAOImpl() {
        super(Application.class);
    }

}
