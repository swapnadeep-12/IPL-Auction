package IPL.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.Dto.Management;
import IPL.Dto.Player;

@Component
public class PlayerDao {
	
	
	@Autowired
	EntityManager entityManager;
	
	public void playerSignup(Player player) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(player);
		entityTransaction.commit();
	}
	
	public Player playerlogin(String username) {
		Query query=entityManager.createQuery("select x from Player x where username=?1").setParameter(1, username);
		List<Player> list=query.getResultList();
		if(list.isEmpty())
		{
			return null;
		}
		else
		{
			Player player=list.get(0);
			return player;
		}
	}
	
	public void playerUpdate(Player player) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(player);
		entityTransaction.commit();
	}
	
	public List<Player> view_ALL_Players()
	{
		List<Player> list=entityManager.createQuery("select x from Player x").getResultList();
		return list;
	}
	
	public Player change_player_status(int id) {
		Player player=entityManager.find(Player.class, id);
		return player;
		
	}
	
	public List<Player> available_players() {
		List<Player> list=entityManager.createQuery("select x from Player x where status='available'").getResultList();
		return list;
	}
	public Player buyplayer(int id) {
		Player player=entityManager.find(Player.class, id);
		return player;
	}
	public Player findplayer(int id) {
		Player player=entityManager.find(Player.class, id);
		return player;
	}
}
