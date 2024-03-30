package app.book.flight.dao;

import app.book.flight.dto.User;

public interface FlightDaoInterafce {

	User findUserByEmail(String email);

}
