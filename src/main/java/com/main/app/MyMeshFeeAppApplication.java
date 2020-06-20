package com.main.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan

@ComponentScan("com.main.app")
//@EnableJpaRepositories("com.main.app")
@EntityScan("com.main.app")
@EnableAutoConfiguration
public class MyMeshFeeAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(MyMeshFeeAppApplication.class, args);
	}

}
