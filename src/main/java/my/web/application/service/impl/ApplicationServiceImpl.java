package my.web.application.service.impl;

import my.web.application.dao.IApplicationDAO;
import my.web.application.model.Application;
import my.web.application.service.IApplicationService;
import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ApplicationServiceImpl implements IApplicationService {
    private IApplicationDAO applicationDAO;

    @Autowired
    public void ApplicationServiceImpl(IApplicationDAO applicationDAO) {
        this.applicationDAO = applicationDAO;
    }

    @Override
    @Transactional
    public void persist(Application u) {
        applicationDAO.persist(u);
    }

    @Override
    @Transactional
    public void update(Application u) {
        applicationDAO.update(u);
    }

    @Override
    @Transactional
    public Application findById(Long id) {
        return applicationDAO.findById(id);
    }

    @Override
    @Transactional
    public Application findById(Long id, LockMode lockMode) {
        return applicationDAO.findById(id, lockMode);
    }

    @Override
    @Transactional
    public void remove(Long id) {
        applicationDAO.remove(id);
    }
}
