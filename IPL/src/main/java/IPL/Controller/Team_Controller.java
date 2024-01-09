package IPL.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dao.TeamDao;
import IPL.Dto.Team;

@RestController
public class Team_Controller {

	@Autowired
	TeamDao teamDao;
	
	@RequestMapping("teamsignup")
	public ModelAndView teamSignup(@ModelAttribute Team team)
	{
		teamDao.teamSignup(team);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Team SignUp Successfully");
		modelAndView.setViewName("teamlogin.jsp");
		return modelAndView;
		
	}
	
	@PostMapping("teamlogin")
	public ModelAndView teamlogin(@RequestParam String username, String password, HttpSession httpSession) {
		Team team = teamDao.teamLogin(username);
		ModelAndView modelAndView = new ModelAndView();
		if (team == null) {
			modelAndView.addObject("msg", "Username/Password is invalid");
			modelAndView.setViewName("teamlogin.jsp");
		} else {
			if (team.getPassword().equals(password)) {
				if(team.isStatus()) {
					httpSession.setAttribute("team",team);// Here i am setting the data by using session tracking for future use
					modelAndView.addObject("msg", "Team  login success");
					modelAndView.addObject("team",team);
					modelAndView.addObject("player", team.getList());
					modelAndView.setViewName("teamhome.jsp");
				}
				else {
					modelAndView.addObject("msg", "Contact to Management");
					modelAndView.setViewName("teamlogin.jsp");
				}
				//httpSession.setAttribute("team", team);
				
			} else {
				modelAndView.addObject("msg", "Your password is invalid");
				modelAndView.setViewName("teamlogin.jsp");
			}
		}
		return modelAndView;
	}
	
	@RequestMapping("ViewAllTeams")
	public ModelAndView viewallteams()
	{
		List<Team> list=teamDao.viewallteams();
		
		ModelAndView modelAndView=new ModelAndView();
		
		if(list.isEmpty()) {
			modelAndView.addObject("msg","no team available");
			modelAndView.setViewName("managementlogin.jsp");
		}
		else {
			modelAndView.addObject("team",list);
			modelAndView.setViewName("ViewAllTeam.jsp");
		}
		return modelAndView;
	}
	
	@RequestMapping("changestatus")
	public ModelAndView changeStatus(@RequestParam("id") int tid) {
		Team team=teamDao.changeStatus(tid);
		ModelAndView modelAndView=new ModelAndView();
		if(team.isStatus())
		{
			team.setStatus(false);
		}
		else 
			team.setStatus(true);
		
		teamDao.update(team);
		
		modelAndView.addObject("msg","status Updated");
		modelAndView.setViewName("ViewAllTeams");
		return modelAndView;
	}
	
	@RequestMapping("addamount")
	public ModelAndView addAmount(@RequestParam double amount,@RequestParam int id) {
		Team team=teamDao.addAmount_team(id);
		team.setWallet(team.getWallet()+amount);
		teamDao.update(team);
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","amount has been added by Management");
		modelAndView.setViewName("ViewAllTeams");
		return modelAndView;
	}
	@RequestMapping("teamhome")
	public ModelAndView teamhome(HttpSession httpSession) {
		Team team=(Team) httpSession.getAttribute("team");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("team",team);
		modelAndView.addObject("player", team.getList());
		modelAndView.setViewName("teamhome.jsp");
		return modelAndView;
	}
	
}


