package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReserveDao;

@Service("reserveService")
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDao reserveDao;
	
	public void create(Reserve reserve){
		this.reserveDao.create(reserve);
	}
	
	public List<Reserve> select(Integer reserve_id){
		return this.reserveDao.select(reserve_id);
	}
	
	public List<Item> selectRoom(Integer room_id){
		return this.reserveDao.selectRoom(room_id);
	}
	
	public void destroy(String booker){
		this.reserveDao.destroy(booker);
	}

	public void add(List<Reserve> rList) {
		// TODO Auto-generated method stub
		this.reserveDao.add(rList);
	}

	public List<Reserve> select(String user_id) {
		// TODO Auto-generated method stub
		return this.reserveDao.select(user_id);
	}
}
