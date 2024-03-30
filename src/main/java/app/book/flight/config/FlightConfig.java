package app.book.flight.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "app.book.flight")
public class FlightConfig {

//	@Bean
//	public DataSource dataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://localhost:3306/air");
//		dataSource.setUsername("rootGanesh@415");
//		dataSource.setPassword("password");
//		return dataSource;
//	}
//
//	@Bean
//	public JdbcTemplate jdbcTemplate(DataSource dataSource) {
//		return new JdbcTemplate(dataSource);
//	}
}
