package logic;

import java.io.Serializable;

public class Item implements Serializable {

	private static final long serialVersionUID = 1L;

	private Integer room_id; //room id

	private String room_name; //room name

	private Integer max_user; //max_user

	private Integer price; //room price


	
	public Integer getMax_user() {
		return max_user;
	}

	public void setMax_user(Integer max_user) {
		this.max_user = max_user;
	}

	public Integer getRoom_id() {
		return this.room_id;
	}

	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}

	public String getRoom_name() {
		return this.room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
 
	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
}
