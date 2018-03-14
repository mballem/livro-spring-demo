package com.mballem.livro.multitenancy;

import org.springframework.stereotype.Component;

/**
 * Created by Ballem on 01/03/2017.
 */
@Component
public class TenancyContext {

    public static final String DEFAULT_TENANT_ID = "tenant_1";

    private ThreadLocal<String> tenantId = ThreadLocal.withInitial(() -> DEFAULT_TENANT_ID);

    public void setTenantId(String tenantId) {
        this.tenantId.set(tenantId);
    }

    public String getTenantId() {
        return (String) this.tenantId.get();
    }
}
