package com.mballem.livro.multitenancy;

import com.jolbox.bonecp.BoneCPDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.jndi.JndiTemplate;
import org.springframework.stereotype.Component;

import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * Created by Ballem on 27/02/2017.
 */
@Component
public class MultiTenancyDataSource {

	@Bean(name = { "dataSource", "dataSource1" })
	public DataSource dataSource() throws NamingException {
		// BoneCPDataSource ds = new BoneCPDataSource();
		// ds.setDriverClass("org.hsqldb.jdbcDriver");
		// ds.setJdbcUrl("jdbc:hsqldb:mem:tenant_1");
		// ds.setUsername("sa");
		// ds.setPassword("");
		// return ds;

		return new JndiTemplate().lookup("java:comp/env/jdbc/hsql", DataSource.class);
	}

	@Bean(name = "dataSource2")
	public DataSource dataSource2() throws NamingException {
		 BoneCPDataSource ds = new BoneCPDataSource();
		 ds.setDriverClass("org.h2.Driver");
		 ds.setJdbcUrl("jdbc:h2:mem:tenant_2;DB_CLOSE_DELAY=-1");
		 ds.setUsername("sa");
		 ds.setPassword("");
		 return ds;

		//return new JndiTemplate().lookup("java:comp/env/jdbc/h2", DataSource.class);
	}
}