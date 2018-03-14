package com.mballem.livro.config;

import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesCriteriasMethodArgumentResolver;
import com.mballem.livro.multitenancy.MultiTenancyInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import java.util.List;

/**
 * Created by Ballem on 01/03/2017.
 * 
 * Configura os recursos ligados ao Spring MVC.
 */
@Configuration
@EnableWebMvc
@ComponentScan("com.mballem.livro")
public class SpringMvcConfig extends WebMvcConfigurerAdapter {

	@Autowired
	private MultiTenancyInterceptor multiTenancyInterceptor;

	@Override 
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor( multiTenancyInterceptor );
	}

	@Override
	public void addArgumentResolvers(List<HandlerMethodArgumentResolver> argumentResolvers) {
		argumentResolvers.add(new DatatablesCriteriasMethodArgumentResolver());
	}

	@Bean
	public InternalResourceViewResolver jspViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setOrder(1);
		return resolver;
	}

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/dandelion/**").addResourceLocations("/dandelion/");
	}
}
