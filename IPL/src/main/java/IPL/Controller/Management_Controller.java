package IPL.Controller;


import javax.persistence.Query;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dao.ManagementDao;
import IPL.Dto.Management;

//@Controller
@RestController
public class Management_Controller {
	
	@Autowired
	ManagementDao managementDao;
	
	@RequestMapping("managementsignup")
	//@ResponseBody
	public ModelAndView save(@ModelAttribute Management management) {
		managementDao.saveManagement(management);
		
		ModelAndView modelAndView=new ModelAndView();
		
		modelAndView.addObject("msg","Management account got created");
		
		modelAndView.setViewName("managementlogin.jsp");
		
		return modelAndView;
	}
	@RequestMapping("managementlogin")
	public ModelAndView managementLogin(@RequestParam String username,@RequestParam String password,HttpSession httpSession) {
	Management management=	managementDao.mangementlogin(username);
	
	ModelAndView modelAndView=new ModelAndView();
	
		if(management==null)
		{
			modelAndView.addObject("msg","Invalid username");
			modelAndView.setViewName("managementlogin.jsp");
//			return modelAndView;
		}
		else {
			if(management.getPassword().equals(password))
			{
				httpSession.setAttribute("management",management);
				modelAndView.addObject("msg","Management log in Successfully");
				modelAndView.addObject("management",management);
				modelAndView.setViewName("managementhome.jsp");
			}
			else {
				modelAndView.addObject("msg","Invalid credential");
				modelAndView.setViewName("managementlogin.jsp");
			}
		}
		return modelAndView;
	}
}































