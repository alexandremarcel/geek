package ort.geekstagram_student;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

@Configuration

@EnableWebMvcSecurity

public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

 @Autowired

 DataSource dataSource;

 @Autowired

 public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {

   auth.jdbcAuthentication().dataSource(dataSource)

  .usersByUsernameQuery(

   "select Nom, Motdepasse, enabled from user where Nom=?")

  .authoritiesByUsernameQuery(

   "select Nom, role from role where Nom=?");
 } 

 @Override

 protected void configure(HttpSecurity http) throws Exception {

   http.authorizeRequests()

  .antMatchers("/hello").access("hasRole('ROLE_ADMIN')")  

  .anyRequest().permitAll()

  .and()

    .formLogin().loginPage("/login")

    .usernameParameter("Nom").passwordParameter("Motdepasse")

  .and()

    .logout().logoutSuccessUrl("/login?logout") 

   .and()

   .exceptionHandling().accessDeniedPage("/403")

 .and()

    .csrf();
 }

}