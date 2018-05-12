package my.web.application;

import my.web.application.config.HibernateConfig;
import my.web.application.model.Application;
import my.web.application.model.Grants;
import my.web.application.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.stream.Stream;

import static org.testng.Assert.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration(classes = { HibernateConfig.class, SpringTestConfig.class })
public class HibernateTest extends AbstractTransactionalJUnit4SpringContextTests {
    private Logger logger = LoggerFactory.getLogger(HibernateTest.class);

    @Autowired
    protected SessionFactory sessionFactory;

    @Test
    public void testUser() {
        Session currentSession = sessionFactory.getCurrentSession();
        User user = new User();
        user.getGrants().add(Grants.ADMIN);
        currentSession.persist(user);
        logger.debug("Before First Flush");
        currentSession.flush();
        logger.debug("After First Flush");
        currentSession.delete(user);
        logger.debug("Before Second Flush");
        currentSession.flush();
        logger.debug("After Second Flush");
    }

}
