package app.book.flight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import app.book.flight.service.FlightService;

@Controller
public class FlightController {

	@Autowired
	FlightService flightService;

	@RequestMapping(path = { "/", "index" })
	public ModelAndView getHomePage() {
		ModelAndView model = new ModelAndView();
		model.setViewName("index");
		return model;
	}

	@RequestMapping("/userlogin")
	public ModelAndView userLogin() {
		ModelAndView model = new ModelAndView();
		model.setViewName("userlogin");
		return model;
	}

	@PostMapping("/login")
	public ModelAndView login(@RequestParam("bemail") String email, @RequestParam("bpass") String password) {
		System.out.println(email + " :: " + password);
		return flightService.validateLogin(email, password);

	}

	@RequestMapping("/contactus")
	public ModelAndView contactUs() {
		ModelAndView model = new ModelAndView();
		model.setViewName("contactus");
		return model;
	}

	@RequestMapping("/about")
	public ModelAndView aboutUs() {
		ModelAndView model = new ModelAndView();
		model.setViewName("about");
		return model;
	}
}
