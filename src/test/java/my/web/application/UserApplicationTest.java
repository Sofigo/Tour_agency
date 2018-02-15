package my.web.application;


import my.web.application.config.HibernateConfig;
import my.web.application.dao.IApplicationDAO;
import my.web.application.dao.IUserDAO;
import my.web.application.model.Application;
import my.web.application.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.stream.Stream;

import static org.testng.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional(noRollbackForClassName = { "User" })
@ContextConfiguration(classes = { HibernateConfig.class, SpringTestConfig.class })
public class UserApplicationTest extends AbstractTransactionalJUnit4SpringContextTests {

    @Autowired
    private IUserDAO iUserDAO;

    @Autowired
    private IApplicationDAO iApplicationDAO;

    @Test
    public void testUser() {
        User user = new User();
        Stream.generate(() -> new Application()).limit(10).forEach(a -> user.addApplication(a));
        iUserDAO.persist(user);
        long applicationId = user.getApplications().iterator().next().getId();
        assertNotNull(iApplicationDAO.findById(applicationId));
        iUserDAO.remove(user.getId());
        assertNull(iApplicationDAO.findById(applicationId));
    }

}
