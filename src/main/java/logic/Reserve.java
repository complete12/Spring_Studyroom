package logic;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Reserve implements Serializable {

	private static final long serialVersionUID = 1L;

	private List<ItemSet> itemList = new ArrayList<ItemSet>();
	
	private int reserve_id;
	private int room_id;
	private String room_name;
	private int price;
	private String booker;
	private String reserve_date;
	private int reserve_time;
	private String reserve_option;
	private String reserve_status;

	public String getReserve_date() {
		return reserve_date;
	}

	public void setReserve_date(String reserve_date) {
		this.reserve_date = reserve_date;
	}

	public void setItemList(List<ItemSet> itemList) {
		this.itemList = itemList;
	}

	public void setReserve_time(int reserve_time) {
		this.reserve_time = reserve_time;
	}

	public List<ItemSet> getItemList() {
		return this.itemList;
	}
	
	public List<ItemSet> push() {
		return this.itemList;
	}

	public boolean isEmpty() {
		if (this.itemList == null || this.itemList.isEmpty()) {
			return true;
		}
		return false;
	}
	
	public void clearAll() {
		this.itemList = new ArrayList<ItemSet>();
	}

	public int getReserve_id() {
		return reserve_id;
	}

	public void setReserve_id(int reserve_id) {
		this.reserve_id = reserve_id;
	}

	public int getRoom_id() {
		return room_id;
	}

	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	
	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getBooker() {
		return booker;
	}

	public void setBooker(String booker) {
		this.booker = booker;
	}

	public int getReserve_time() {
		return reserve_time;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getReserve_option() {
		return reserve_option;
	}

	public void setReserve_option(String reserve_option) {
		this.reserve_option = reserve_option;
	}

	public String getReserve_status() {
		return reserve_status;
	}

	public void setReserve_status(String reserve_status) {
		this.reserve_status = reserve_status;
	}
	
	
}