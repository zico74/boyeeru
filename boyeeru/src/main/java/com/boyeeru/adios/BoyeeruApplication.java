package com.boyeeru.adios;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
public class BoyeeruApplication {

	public static void main(String[] args) {
		SpringApplication.run(BoyeeruApplication.class, args);
	}
}
