package com.Bodimak.ticket.RestController;

import javax.servlet.http.HttpServletRequest;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Bodimak.ticket.Model.Ticket;
import com.Bodimak.ticket.Services.TicketService;
@Controller
public class RestController {
	
	@Autowired
	private TicketService userService;


	@GetMapping("/welcome")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	@GetMapping("/ticket")
	public String showTickets(HttpServletRequest request) {
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "MODE_TICKET");
		return "welcomepage";
	}
		
	@GetMapping("/register")
	public String Registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "welcomepage";
	}
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute Ticket user,BindingResult bindingResult,HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return "welcomepage";
	}
	
	@GetMapping("/show-users")
	public String showAllUser(HttpServletRequest request) {
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	
	@RequestMapping("/delete-user")
	public String deleteUser(@RequestParam int id,HttpServletRequest request) {
		userService.deleteMyUsers(id);
		request.setAttribute("users",userService.ShowAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return "welcomepage";
	}
	@RequestMapping("/edit-user")
	public String editUser(@RequestParam int id,HttpServletRequest request) {
		request.setAttribute("user", userService.editMyUser(id));
		request.setAttribute("mode","MODE_UPDATE");
		return "welcomepage";
	}
	
	@GetMapping("/login")
	public String Login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "welcomepage";
	}
	
	/*@RequestMapping("/login-user")
	public String loginUser(@ModelAttribute Ticket user,HttpServletRequest request) {
		if(userService.findByUsernameAndPassword(user.getUsername(), user.getPassword())!=null) {
		return "homepage";
		}
		else {
			request.setAttribute("error","Invalid username or password" );
			request.setAttribute("mode", "MODE_LOGIN");
			return "welcomepage";
		}
	}*/
	
}
