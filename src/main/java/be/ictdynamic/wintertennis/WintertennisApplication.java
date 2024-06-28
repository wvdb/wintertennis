package be.ictdynamic.wintertennis;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.hateoas.config.EnableHypermediaSupport;

@SpringBootApplication
@EnableHypermediaSupport(type = EnableHypermediaSupport.HypermediaType.HAL)
public class WintertennisApplication {

	public static void main(String[] args) {
		SpringApplication.run(WintertennisApplication.class, args);
	}

}
