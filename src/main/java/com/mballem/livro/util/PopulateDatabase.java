package com.mballem.livro.util;

import org.springframework.context.annotation.Bean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.DataSourceInitializer;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

/**
 * Created by Ballem on 27/02/2017.
 * 
 * Vai popular os bancos de dados via scripts SQL 
 * na inicialização da aplicação.
 */
@Component
public class PopulateDatabase {

    @Bean
    public DataSourceInitializer dataSourceHSQL(DataSource dataSource1) {
        ResourceDatabasePopulator pop = new ResourceDatabasePopulator();
        pop.addScript(new ClassPathResource("hsql/schema.sql"));
        pop.addScript(new ClassPathResource("hsql/data.sql"));
        pop.setSqlScriptEncoding("UTF-8");
        pop.setIgnoreFailedDrops(true);
        pop.setSeparator(";");
        DataSourceInitializer dataSourceInitializer = new DataSourceInitializer();
        dataSourceInitializer.setDataSource(dataSource1);
        dataSourceInitializer.setDatabasePopulator(pop);
        return dataSourceInitializer;
    }

    @Bean
    public DataSourceInitializer dataSourceH2(DataSource dataSource2) { 
        ResourceDatabasePopulator pop = new ResourceDatabasePopulator();
        pop.addScript(new ClassPathResource("h2/schema.sql"));
        pop.addScript(new ClassPathResource("h2/data.sql"));
        pop.setSqlScriptEncoding("UTF-8");
        pop.setIgnoreFailedDrops(true);
        pop.setSeparator(";");
        DataSourceInitializer dataSourceInitializer = new DataSourceInitializer();
        dataSourceInitializer.setDataSource(dataSource2);
        dataSourceInitializer.setDatabasePopulator(pop);
        return dataSourceInitializer;
    }
}
