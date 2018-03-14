package com.mballem.livro.config;

import com.github.dandelion.core.web.DandelionFilter;
import com.github.dandelion.core.web.DandelionServlet;
import com.github.dandelion.datatables.core.web.filter.DatatablesFilter;
import org.springframework.orm.jpa.support.OpenEntityManagerInViewFilter;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created by Ballem on 17/02/2017.
 * 
 * Classe de inicialização do Spring.
 * Servlets e Filtros são configurados aqui.
 */
public class SpringInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {

        AnnotationConfigWebApplicationContext webContext = 
        		new AnnotationConfigWebApplicationContext();

        servletContext.addListener(new ContextLoaderListener(webContext));

        webContext.register(SpringMvcConfig.class);
        webContext.setServletContext(servletContext);

        DispatcherServlet dispatcherServlet = new DispatcherServlet(webContext);
        dispatcherServlet.setThrowExceptionIfNoHandlerFound(true);

        ServletRegistration.Dynamic reDynamic =
                servletContext.addServlet("dispacher", dispatcherServlet);
        reDynamic.setLoadOnStartup(1);
        reDynamic.addMapping("/");

        FilterRegistration.Dynamic encodingFilter =
                servletContext.addFilter("encodingFilter", new CharacterEncodingFilter());
        encodingFilter.setInitParameter("encoding", "UTF-8");
        encodingFilter.setInitParameter("forceEncoding", "true");
        encodingFilter.addMappingForUrlPatterns(null, true, "/*");

        ServletRegistration.Dynamic dandelionServlet = servletContext
        		.addServlet("dandelionServlet", DandelionServlet.class);
        
        dandelionServlet.setLoadOnStartup(2);
        dandelionServlet.addMapping("/dandelion-assets/*");

        FilterRegistration.Dynamic dandelionFilter = servletContext
        		.addFilter("dandelionFilter", new DandelionFilter());
        
        dandelionFilter.addMappingForUrlPatterns(null, true, "/*");

        FilterRegistration.Dynamic inViewFilter =
                servletContext.addFilter(
                        "Spring OpenEntityManagerInViewFilter", new OpenEntityManagerInViewFilter());
        inViewFilter.setAsyncSupported(Boolean.TRUE);
        inViewFilter.addMappingForUrlPatterns(null, true, "/{tenantId}/*");

        FilterRegistration.Dynamic securityFilter =
                servletContext.addFilter("springSecurityFilterChain", new DelegatingFilterProxy());
        securityFilter.setAsyncSupported(Boolean.TRUE);
        securityFilter.addMappingForUrlPatterns(null, true, "/*");
    }
}