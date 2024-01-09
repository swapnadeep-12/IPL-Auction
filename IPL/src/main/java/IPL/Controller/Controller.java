package IPL.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dto.Management;
import IPL.Dto.Player;
import IPL.Dto.Team;

@RestController
//@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired //It will act like a vehicle and it will bring the object from the respective class.
	Management management;
	
	@Autowired
	Player player;
	
	@Autowired
	Team team;
	
	@RequestMapping("signup")	
	public ModelAndView signup(@RequestParam String role) {
		
		ModelAndView modelAndView=new ModelAndView(); // here Model means object view means frontend(jsp) here the work of ModelAndView is nothing but carrying the object to the front end(to the jsp).
		
		if(role.equals("Management"))
		{
			modelAndView.addObject("management",management);
			modelAndView.setViewName("management.jsp");
			 
		}
		else if(role.equals("Player"))
		{
			modelAndView.addObject("player",player );
			modelAndView.setViewName("playersignup.jsp");	
		}
		else
		{
			modelAndView.addObject("team",team );
			modelAndView.setViewName("teamsignup.jsp");			
			
		}
		return modelAndView;//if i want to return or carry to the front end i should return the ref variable of ModelAndView class.
	}
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession httpSession)
	{
		httpSession.invalidate();
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","Log Out Successfully");
		modelAndView.setViewName("signup.jsp");
		return modelAndView;
	}
}
