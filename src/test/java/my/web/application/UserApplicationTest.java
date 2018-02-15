package my.web.application;


import my.web.application.config.HibernateConfig;
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

import static org.testng.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = { HibernateConfig.class, SpringTestConfig.class })
public class UserApplicationTest extends AbstractTransactionalJUnit4SpringContextTests {

    @Autowired
    private IUserDAO iUserDAO;

    @Test
    public void testUser() {
        User user = new User();
        Application application = new Application();
        user.addApplication(application);
        iUserDAO.persist(user);
        assertEquals(application.getId(), 1001l);
    }

}
