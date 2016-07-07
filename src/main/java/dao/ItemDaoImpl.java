package dao;

import java.util.List;

import javax.sql.DataSource;

import logic.Item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

@SuppressWarnings("deprecation")
@Repository
public class ItemDaoImpl implements ItemDao {

	private SimpleJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	private static final String SELECT_ALL = "SELECT room_id, room_name, max_user, price FROM room";

	public List<Item> findAll() {
		RowMapper<Item> mapper = new BeanPropertyRowMapper<Item>(Item.class);
		return this.template.query(ItemDaoImpl.SELECT_ALL, mapper);
	}

	private static final String SELECT_BY_PRIMARY_KEY = "SELECT room_id, room_name, max_user, price FROM room WHERE room_id = ?";

	public Item findByPrimaryKey(Integer room_id) {
		RowMapper<Item> mapper = new BeanPropertyRowMapper<Item>(Item.class);
		return this.template.queryForObject(SELECT_BY_PRIMARY_KEY, mapper, room_id);
	}
}