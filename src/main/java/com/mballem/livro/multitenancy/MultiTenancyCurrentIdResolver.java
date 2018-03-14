package com.mballem.livro.multitenancy;

import org.hibernate.context.spi.CurrentTenantIdentifierResolver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Ballem on 01/03/2017.
 */
@Component
public class MultiTenancyCurrentIdResolver implements CurrentTenantIdentifierResolver {

    @Autowired
    private TenancyContext tenancyContext;

    @Override
    public String resolveCurrentTenantIdentifier() {
        return tenancyContext.getTenantId();
    }

    @Override
    public boolean validateExistingCurrentSessions() {
        return true;
    }
}
