package com.mballem.livro.config;

import org.springframework.data.domain.AuditorAware;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

/**
 * Created by Ballem on 01/03/2017.
 */
public class SpringSecurityAuditorAware implements AuditorAware<String> {

	public String getCurrentAuditor() {
		
		Authentication authentication = SecurityContextHolder
											.getContext()
											.getAuthentication();

		if (authentication == null || !authentication.isAuthenticated()) {
			return null;
		}
		return ((User) authentication.getPrincipal()).getUsername();
	}

}
