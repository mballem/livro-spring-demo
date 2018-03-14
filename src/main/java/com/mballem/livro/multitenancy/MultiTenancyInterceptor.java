package com.mballem.livro.multitenancy;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by Ballem on 27/02/2017.
 */
@Component
public class MultiTenancyInterceptor extends HandlerInterceptorAdapter {
    
	@Autowired
    private TenancyContext tenancyContext;

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {

        Map<String, Object> map = (Map<String, Object>) req
        		.getAttribute(HandlerMapping.URI_TEMPLATE_VARIABLES_ATTRIBUTE);

        if (map.containsKey("tenantId")) {
            String tenantId = (String) map.get("tenantId");
            req.getSession().setAttribute("tenantId", tenantId);
            tenancyContext.setTenantId(tenantId);
        }
        return true;
    }
}
