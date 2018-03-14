package com.mballem.livro.config;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

/**
 * Created by Ballem on 01/03/2017.
 */
@EnableWebSecurity
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/", "/{tenantId}/login").permitAll()
                .anyRequest().authenticated()
                .and()
            .formLogin()
                .loginPage("/{tenantId}/login")
                .successHandler(new SpringSecurityHandler())
				.usernameParameter("username")
				.passwordParameter("password")
				.failureHandler(new SpringSecurityHandler())
                .permitAll()
                .and()
            .logout()
            	.logoutUrl("/logout")
            	.logoutSuccessUrl("/")
            	.invalidateHttpSession(true) 
            	.clearAuthentication(true)
                .permitAll();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/dandelion/**");
    }

    @Bean
	public UserDetailsService userDetailsService() {
		InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
		manager.createUser(User.withUsername("demo").password("demo").roles("USER").build());
		manager.createUser(User.withUsername("spring").password("spring").roles("USER").build());
		manager.createUser(User.withUsername("leitor").password("leitor").roles("USER").build());
		return manager;
	}
}
