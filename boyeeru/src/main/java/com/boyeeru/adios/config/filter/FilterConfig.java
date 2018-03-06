package com.boyeeru.adios.config.filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FilterConfig {
	@Bean
	public FilterRegistrationBean filterRegistration() {
	    FilterRegistrationBean reg = new FilterRegistrationBean(new LogFilter());
	 
	    return reg;
	}
}
