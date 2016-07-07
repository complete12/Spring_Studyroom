package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ItemDao;

@Service
public class ItemCatalogImpl implements ItemCatalog {

	@Autowired
	private ItemDao itemDao;

	public List<Item> getItemList() {
		return this.itemDao.findAll();
	}

	public Item getItemByItemId(Integer room_id) {
		return this.itemDao.findByPrimaryKey(room_id);
	}
}