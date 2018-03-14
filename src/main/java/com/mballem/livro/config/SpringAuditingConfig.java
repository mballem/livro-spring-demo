package com.mballem.livro.config;

import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.stereotype.Component;

/**
 * Created by Ballem on 01/03/2017.
 */
@Component
@EnableJpaAuditing
public class SpringAuditingConfig {

	@Bean
	public AuditorAware<String> auditorAware() {
		
		return new SpringSecurityAuditorAware();
	}
}