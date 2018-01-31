package my.web.application.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .withUser("user").password("password").roles("USER").and()
                .withUser("admin").password("password").roles("USER", "ADMIN");
        /*auth.jdbcAuthentication()
                .authoritiesByUsernameQuery("select username,authority from authorities where username = ?")
                .groupAuthoritiesByUsername("select g.id, g.group_name, ga.authority from " +
                                            " groups g, group_members gm, group_authorities ga where " +
                                            " gm.username = ? and g.id = ga.group_id and g.id = gm.group_id")
                .usersByUsernameQuery("select username, password, true from my_user_table where username = ?");*/
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin()
                .and()
                .rememberMe()
                .tokenValiditySeconds(2419200)
                .key("webAgencyKey")
                .and()
                .logout()
                .logoutSuccessUrl("/")
                .and()
                .authorizeRequests()
                .anyRequest().permitAll();
    }

}
