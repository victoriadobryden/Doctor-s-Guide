package com.example.doctors_guide;

import com.example.doctors_guide.repositories.RecommendedMedicationsRepository;
import com.example.doctors_guide.services.RecommendedMedicationsService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.example.doctors_guide.repositories")
public class DoctorsGuideApplication {
	public static void main(String[] args) {
		SpringApplication.run(DoctorsGuideApplication.class, args);
	}
	@Bean
	public CommandLineRunner run() {
       return args -> {
		   System.out.println("Hello world");

	   };
	}

}

