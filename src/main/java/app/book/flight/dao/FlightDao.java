package app.book.flight.dao;

import java.sql.ResultSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import app.book.flight.dto.User;

@Repository
public class FlightDao implements FlightDaoInterafce {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public User findUserByEmail(String email) {
		String query = "select * from users where email = ?";
		try {
			return jdbcTemplate.queryForObject(query, new Object[] { email }, new UserRowMapper());
		} catch (Exception e) {
			return null;
		}
	}

	// Inner class to map rows of the SQL result set to instances of the User class
	private static class UserRowMapper implements RowMapper<User> {
		public User mapRow(ResultSet rs, int rowNum) throws java.sql.SQLException {
			User user = new User();
			user.setId(rs.getInt("userid"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("pwd"));
			return user;
		}

	}
}