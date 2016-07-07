package dao;

import java.util.List;

import logic.Item;
import logic.Reserve;

public interface ReserveDao {
	void create(Reserve reserve);
	List<Reserve> select(Integer reserve_id);
	List<Reserve> select(String user_id);
	List<Item> selectRoom(Integer room_id);
	void destroy(String booker);
	void add(List<Reserve> rList);

}
