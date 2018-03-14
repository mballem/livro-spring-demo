package com.mballem.livro.config;

import com.mballem.livro.multitenancy.MultiTenancyDataSourceProvider;
import org.hibernate.MultiTenancyStrategy;
import org.hibernate.cfg.Environment;
import org.hibernate.context.spi.CurrentTenantIdentifierResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaDialect;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Ballem on 01/03/2017.
 */
@Configuration
@EnableJpaRepositories("com.mballem.livro.repository")
@EnableTransactionManagement
public class SpringDataConfig {

    @Autowired
    private DataSource dataSource;
    @Autowired
    private MultiTenancyDataSourceProvider multiTenancyDataSourceProvider;
    @Autowired
    private CurrentTenantIdentifierResolver currentTenantIdentifierResolver;

    @Bean(value = "entityManagerFactory")
    public EntityManagerFactory entityManagerFactory() {

        LocalContainerEntityManagerFactoryBean factory =
                new LocalContainerEntityManagerFactoryBean();

        HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
        vendorAdapter.setGenerateDdl(false);
        vendorAdapter.setShowSql(false);

        factory.setDataSource(this.dataSource);
        factory.setJpaVendorAdapter(vendorAdapter);
        factory.setPackagesToScan("com.mballem.livro.entity");
        factory.setJpaPropertyMap(multiTenancyJpaProperties());
        factory.afterPropertiesSet();

        return factory.getObject();
    }

    @Bean
    public PlatformTransactionManager transactionManager() {

        JpaTransactionManager manager = new JpaTransactionManager();
        manager.setEntityManagerFactory(entityManagerFactory());
        manager.setJpaDialect(new HibernateJpaDialect());

        return manager;
    }

    private Map<String, Object> multiTenancyJpaProperties() {

        Map<String, Object> hibernateProps = new HashMap<String, Object>();
        hibernateProps.put(Environment.USE_NEW_ID_GENERATOR_MAPPINGS, "false");
        hibernateProps.put(Environment.MULTI_TENANT, MultiTenancyStrategy.DATABASE);
        hibernateProps.put(Environment.MULTI_TENANT_CONNECTION_PROVIDER, multiTenancyDataSourceProvider);
        hibernateProps.put(Environment.MULTI_TENANT_IDENTIFIER_RESOLVER, currentTenantIdentifierResolver);
        return hibernateProps;

    }
}
