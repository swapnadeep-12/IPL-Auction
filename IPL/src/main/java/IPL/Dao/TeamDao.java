package IPL.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.Dto.Player;
import IPL.Dto.Team;

@Component
public class TeamDao {
	
	@Autowired
	EntityManager entityManager;
	
	@Autowired
	PlayerDao playerDao;

	public void teamSignup(Team team) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
//		List<Player> players=playerDao.view_ALL_Players();
//		team.setList(players);
		entityTransaction.begin();
		entityManager.persist(team);
		entityTransaction.commit();
	}
	
	public Team teamLogin(String username) {
		List <Team>list =entityManager.createQuery("Select x from Team x where username= ?1").setParameter(1, username).getResultList();
		
		if(list.isEmpty())
		{
			return null;
		}
		else {
			return list.get(0);
		}
	}
	public List<Team> viewallteams()
	{
		List<Team> list= entityManager.createQuery("Select x from Team x").getResultList();
		return list;
	}
	public Team viewplayerofrespectiveteam(int tid) {
		Team team =entityManager.find(Team.class, tid);
		return team;
	}
	
	public Team changeStatus(int tid) {
		Team team =entityManager.find(Team.class, tid);
		return team;
	}
	
	public void update(Team team) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(team);
		entityTransaction.commit();
	}
	
	public Team addAmount_team(int id) {
		Team team=entityManager.find(Team.class, id);
		return team;
	}
	public List<Team> name() {
		List<Team> list=entityManager.createQuery("select x from Team x").getResultList();
		return list;
}
}
