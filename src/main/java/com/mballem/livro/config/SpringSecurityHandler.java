package com.mballem.livro.config;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Ballem on 28/02/2017.
 * <p>
 * Esta classe vai direcionar para a próxima página após
 * o login ser efetuado.
 * A url deverá conter o tenant_id selecionado, que será
 * recuperado a partir da sessão.
 */
public class SpringSecurityHandler implements AuthenticationSuccessHandler, AuthenticationFailureHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest req,
                                        HttpServletResponse resp, Authentication auth) throws IOException {

        String tenantId = (String) req.getSession().getAttribute("tenantId");
        if (auth.isAuthenticated()) {
            resp.sendRedirect(req.getContextPath() + "/" + tenantId + "/contato");
        }
    }

    @Override
    public void onAuthenticationFailure(HttpServletRequest req,
                                        HttpServletResponse resp,
                                        AuthenticationException ex) throws IOException, ServletException {

        String tenantId = (String) req.getSession().getAttribute("tenantId");
        resp.sendRedirect(req.getContextPath() + "/" + tenantId + "/login?error");
    }
}
