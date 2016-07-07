package dao;

import javax.sql.DataSource;

import logic.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao {

	private static final String SELECT_BY_USERID_PASSWORD = "SELECT user_id, password, user_name, phone,"
			+ "email FROM user_account WHERE user_id = ? AND password = ?";

	private static final String INSERT = "INSERT INTO user_account (user_id, password, user_name, phone, email)"
			+ " VALUES(:userId, :password, :userName, :phone, :email)";
	
	private static final String UPDATE = "UPDATE user_account SET password=?, phone=?, email=? WHERE user_id=?;";

	private SimpleJdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	public User findByUserIdAndPassword(String userId, String password) {
		RowMapper<User> mapper = new BeanPropertyRowMapper<User>(User.class);
		return this.template.queryForObject(SELECT_BY_USERID_PASSWORD, mapper, userId, password);
	}

	public void create(User user) {
		SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(user);
		this.template.update(UserDaoImpl.INSERT, parameterSource);
	}

	public void editUserInfo(User user) {
		// TODO Auto-generated method stub
		System.out.println("UserDaoImpl : " + user.getPassword());
		this.template.update(UserDaoImpl.UPDATE, user.getPassword(), user.getPhone(), user.getEmail(), user.getUserId());
		
	}
}
