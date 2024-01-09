package IPL.Helper;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration //By using this annotation we will do the configuration of our project
@ComponentScan("IPL")
public class MyConfig {
	
	@Bean //It Will help to create ref variable of interface type
	public EntityManager getEMF() {
		EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
		EntityManager entityManager=entityManagerFactory.createEntityManager();
		return entityManager;
	}
}
