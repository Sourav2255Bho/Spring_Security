package com.tsbrand;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@EnableWebSecurity
//@EnableJpaRepositories("com.tsbrand.repository")
//@EntityScan("com.tsbrand.model")
public class TsBankBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(TsBankBackendApplication.class, args);
	}

}