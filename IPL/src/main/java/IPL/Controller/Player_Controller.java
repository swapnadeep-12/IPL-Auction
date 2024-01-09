package IPL.Controller;


import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import IPL.Dao.PlayerDao;
import IPL.Dao.TeamDao;
import IPL.Dto.Management;
import IPL.Dto.Player;
import IPL.Dto.Team;

@RestController
public class Player_Controller {
	
	@Autowired
	Player player;
	
	@Autowired
	PlayerDao playerDao;
	
	@Autowired
	TeamDao teamDao;
	
	@RequestMapping("playersignup")
	public ModelAndView playerSignup(@ModelAttribute Player player) {
		player.setStatus("pending");
		playerDao.playerSignup(player);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Player Account got created");
		modelAndView.setViewName("playerlogin.jsp");
		
		return modelAndView; 
	}
	
	@RequestMapping("playerlogin")
	public ModelAndView playerlogin(@RequestParam String username,@RequestParam String password,HttpSession httpSession) {
		
		Player player=playerDao.playerlogin(username);
		ModelAndView modelAndView=new ModelAndView();
		
		if(player==null)
		{
			modelAndView.addObject("msg","Invalid username");
			modelAndView.setViewName("playerlogin.jsp");
//			return modelAndView;
		}
		else {
			httpSession.setAttribute("player", player);//Here it is use to take the current user information to edit and update purpose.
			if(player.getPassword().equals(password))
			{
				modelAndView.addObject("msg","Log in Successfully");
				modelAndView.addObject("player",player);
				modelAndView.setViewName("playerhome.jsp");
			}
			else {
				modelAndView.addObject("msg","Invalid credential");
				modelAndView.setViewName("playerlogin.jsp");
			}
		}
		return modelAndView;
	}
	
	@RequestMapping("editplayer")
	public ModelAndView editPlayer(HttpSession httpSession) {
		Player player=(Player) httpSession.getAttribute("player");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("player",player);
		modelAndView.setViewName("editPlayer.jsp");
		return modelAndView;
	}
	
	@RequestMapping("playerupdate")
	public ModelAndView updatePlayer(@ModelAttribute Player player) 
	{
		playerDao.playerUpdate(player);
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","player data has been edited Successfully");
		modelAndView.setViewName("playerhome.jsp");
		return modelAndView;
	}
	@RequestMapping("viewplayers")
	public ModelAndView viewPlayers(@RequestParam ("id") int tid) {
		Team team=teamDao.viewplayerofrespectiveteam(tid);
		List<Player> playerslist=team.getList();
//		playerslist.add(null);
		ModelAndView modelAndView=new ModelAndView();
		if(playerslist.isEmpty())
		{
			modelAndView.addObject("msg","No Player Are available inside team");
			modelAndView.addObject("teamname",team.getName());
			modelAndView.setViewName("ViewAllTeams");
			return modelAndView;
		}
		else
		{
			modelAndView.addObject("players",playerslist);
			modelAndView.addObject("teamname",team.getName());
			modelAndView.setViewName("viewteamplayers.jsp");
			return modelAndView;
		}
		
	}
	@RequestMapping("ViewAllPlayer")
	public ModelAndView view_Allplayers(HttpSession httpSession) {
		List<Player> players=playerDao.view_ALL_Players();
		ModelAndView modelAndView=new ModelAndView();
		if(players.isEmpty())
		{
			modelAndView.addObject("msg","No players are Available");
			modelAndView.setViewName("managementhome.jsp");
		}
		else {
			modelAndView.addObject("players",players);
			Management management=(Management) httpSession.getAttribute("management");
			modelAndView.addObject("management",management);
			modelAndView.setViewName("view_all_players.jsp");
		}
		return modelAndView;
	}
	@RequestMapping("changestatusforplayer")
	public ModelAndView changePlayer_status(@RequestParam int id) {
		Player player=playerDao.change_player_status(id);
		
		if(player.getStatus().equals("pending"))
		{
			player.setStatus("available");
		}
		else
		{
			player.setStatus("pending");
		}
		playerDao.playerUpdate(player);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Status got Updated");
		modelAndView.setViewName("ViewAllPlayer");
		return modelAndView;
	}
	@RequestMapping("viewavailableplayers")
	public ModelAndView available_players(HttpSession httpSession) {
		
		ModelAndView modelAndView=new ModelAndView();
		
		List<Player> players=playerDao.available_players();
		
		if(players.isEmpty())
		{
			Team team=(Team) httpSession.getAttribute("team");
			modelAndView.addObject("msg","No Players are Available to buy");
			modelAndView.addObject("player", team.getList());
			modelAndView.setViewName("teamhome.jsp");
		}
		else
		{
			modelAndView.addObject("players",players);
			modelAndView.setViewName("BuyPlayer.jsp");
		}
		return modelAndView;
		
	}
	
	@RequestMapping("buyplayer")
	public ModelAndView buyPlayer(@RequestParam int id,HttpSession httpSession)
	{
		Team team=(Team) httpSession.getAttribute("team");
		Player player=playerDao.buyplayer(id);
		ModelAndView modelAndView=new ModelAndView();
		if(player.getPrice()>team.getWallet())
		{
			modelAndView.addObject("msg","inSufficient Balance");
			modelAndView.setViewName("teamhome.jsp");
		}
		else {
			team.setWallet(team.getWallet()-player.getPrice());
			player.setStatus("soldout");
			player.setTeam(team);
			List<Player> Players=team.getList();
			Players.add(player);
			team.setList(Players);
			playerDao.playerUpdate(player);
			teamDao.update(team);
			modelAndView.addObject("msg","Player has been bought");
			modelAndView.addObject("player", Players);
			modelAndView.setViewName("teamhome.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("releaseplayer")
	public ModelAndView releaseplayer(@RequestParam int id,HttpSession httpSession) {
		Team team=(Team) httpSession.getAttribute("team");
		List<Player> players=team.getList();
		Player player=playerDao.findplayer(id);
		players.remove(player);
		player.setStatus("available");
		player.setTeam(null);
		team.setWallet(team.getWallet()+player.getPrice());
		team.setList(players);
		playerDao.playerUpdate(player);
		teamDao.update(team);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Players has been released");
		modelAndView.addObject("team",team);
		modelAndView.addObject("player", team.getList());
		modelAndView.setViewName("teamhome.jsp");
		return modelAndView;
	}
	@RequestMapping("playerhome")
	public ModelAndView playerhome(HttpSession httpSession) {
		Player player=(Player) httpSession.getAttribute("player");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("player",player);
		modelAndView.setViewName("playerhome.jsp");
		return modelAndView;
	}
	
}
