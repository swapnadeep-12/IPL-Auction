package IPL.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.Dto.Management;

@Component
public class ManagementDao {
	
	@Autowired
	EntityManager entityManager;

	public void saveManagement(Management management) {
//		EntityManager entityManager=entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction=entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.persist(management);
		entityTransaction.commit();
	}
	
	public Management mangementlogin(String username) {
//		EntityManager entityManager=entityManagerFactory.createEntityManager();
		Query query=entityManager.createQuery("select x from Management x where username=?1").setParameter(1, username);
		List<Management> list=query.getResultList();
		if(list.isEmpty())
		{
			return null;
		}
		else
		{
			Management management=list.get(0);
			return management;
		}
	}
	public Management managementDetails(String username) {
		Management management=entityManager.find(Management.class, username);
		return management;
	}
}
