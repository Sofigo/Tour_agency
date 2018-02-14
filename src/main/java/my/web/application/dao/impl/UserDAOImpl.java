package my.web.application.dao.impl;

import my.web.application.dao.IUserDAO;
import my.web.application.model.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl extends GenericDAOImpl<User, Long> implements IUserDAO {

    public UserDAOImpl() {
        super(User.class);
    }

}
