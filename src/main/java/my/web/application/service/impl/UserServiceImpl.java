package my.web.application.service.impl;

import my.web.application.dao.IUserDAO;
import my.web.application.model.User;
import my.web.application.service.IUserService;
import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements IUserService {
    private IUserDAO userDAO;

    @Autowired
    public void setUserDAO(IUserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    @Transactional
    public void persist(User u) {
        userDAO.persist(u);
    }

    @Override
    @Transactional
    public void update(User u) {
        userDAO.update(u);
    }

    @Override
    @Transactional
    public User findById(Long id) {
        return userDAO.findById(id);
    }

    @Override
    @Transactional
    public User findById(Long id, LockMode lockMode) {
        return userDAO.findById(id, lockMode);
    }

    @Override
    @Transactional
    public void remove(Long id) {
        userDAO.remove(id);
    }
}
