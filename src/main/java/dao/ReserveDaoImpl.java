package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

import logic.Item;
import logic.Reserve;

@Repository
public class ReserveDaoImpl implements ReserveDao{
	private static final String INSERT = "INSERT INTO reserve(room_id, room_name, booker, reserve_date, reserve_time, price, reserve_option, reserve_status)"
			+" VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String SELECT = "SELECT * FROM reserve where reserve_id=?";
	private static final String SELECT_NAME = "SELECT * FROM reserve where booker=?";
	private static final String SELECT_ROOM = "SELECT * FROM room where room_id=?";
	private static final String DELETE = "DELETE FROM reserve where booker=?";

	private SimpleJdbcTemplate template;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	public void create(Reserve reserve) {
		this.template.update(ReserveDaoImpl.INSERT, reserve.getRoom_id(), reserve.getRoom_name(), reserve.getBooker()
				,reserve.getReserve_date(), reserve.getReserve_time(), reserve.getPrice(), reserve.getReserve_option(), reserve.getReserve_status());
	}
	public void destroy(String booker) {
		// TODO Auto-generated method stub
		this.template.update(this.DELETE, booker);
	}

	public List<Reserve> select(Integer reserve_id) {
		// TODO Auto-generated method stub
		RowMapper<Reserve> mapper = new BeanPropertyRowMapper<Reserve>(Reserve.class);
		return this.template.query(ReserveDaoImpl.SELECT, mapper, reserve_id);
	}
	
	public List<Item> selectRoom(Integer room_id) {
		// TODO Auto-generated method stub
		RowMapper<Item> mapper = new BeanPropertyRowMapper<Item>(Item.class);
		return this.template.query(ReserveDaoImpl.SELECT_ROOM, mapper, room_id);
	}

	public void add(List<Reserve> rList) {
		// TODO Auto-generated method stub
		for(int i=0; i< rList.size(); i++){
			this.template.update(ReserveDaoImpl.INSERT, rList.get(i).getRoom_id(), rList.get(i).getRoom_name(), rList.get(i).getBooker()
					,rList.get(i).getReserve_date() ,rList.get(i).getReserve_time(), rList.get(i).getPrice(), rList.get(i).getReserve_option(), rList.get(i).getReserve_status());
		}
	}

	public List<Reserve> select(String user_id) {
		// TODO Auto-ge
		RowMapper<Reserve> mapper = new BeanPropertyRowMapper<Reserve>(Reserve.class);
		return this.template.query(ReserveDaoImpl.SELECT_NAME, mapper, user_id);
	}

}
