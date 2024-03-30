package app.book.flight.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import app.book.flight.dao.FlightDao;
import app.book.flight.dto.User;

@Service
public class FlightService {

	@Autowired
	FlightDao flightDao;

	public ModelAndView validateLogin(String email, String password) {
		ModelAndView modelAndView = new ModelAndView();
		User user = flightDao.findUserByEmail(email);
		System.out.println(user);
		if (user != null && user.getPassword().equals(password)) {
			modelAndView.setViewName("userhome");
			return modelAndView;
		} else {
			modelAndView.addObject("message", "Invalid email or password");
			modelAndView.setViewName("userlogin");
			return modelAndView;
		}
	}
}