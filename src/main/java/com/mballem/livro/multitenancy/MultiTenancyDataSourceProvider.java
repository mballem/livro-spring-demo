package com.mballem.livro.multitenancy;

import org.hibernate.HibernateException;
import org.hibernate.engine.jdbc.connections.spi.AbstractDataSourceBasedMultiTenantConnectionProviderImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Ballem on 27/02/2017.
 */
@Component
public class MultiTenancyDataSourceProvider
                extends AbstractDataSourceBasedMultiTenantConnectionProviderImpl {

    private DataSource dataSource1;
    private DataSource dataSource2;
    private Map<String, DataSource> dataSourceMap;

    @Autowired
    public MultiTenancyDataSourceProvider(DataSource dataSource1, DataSource dataSource2) {
        this.dataSource1 = dataSource1;
        this.dataSource2 = dataSource2;
    }

    @PostConstruct
    public void load() {
        dataSourceMap = new HashMap<>();
        dataSourceMap.put("tenant_1", dataSource1);
        dataSourceMap.put("tenant_2", dataSource2);
    }

    @Override
    protected DataSource selectAnyDataSource() {
        return dataSourceMap.get(TenancyContext.DEFAULT_TENANT_ID);
    }

    @Override
    protected DataSource selectDataSource(String tenantId) {
        if (!tenantId.isEmpty()) {
            return dataSourceMap.get(tenantId);
        }
        throw new HibernateException("Nenhum tenant foi selecionado!");
    }
}
