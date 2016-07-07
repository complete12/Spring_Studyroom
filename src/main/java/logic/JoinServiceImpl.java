package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.JoinDao;

@Service("joinService")
public class JoinServiceImpl implements JoinService{

	@Autowired
	private JoinDao joinDao;
	
	public List<Join> getNoticeList() {
		// TODO Auto-generated method stub
		return this.joinDao.getAllList();
	}

	public Join getContentByContentID(Integer content_id) {
		// TODO Auto-generated method stub
		return this.joinDao.getContentByContentId(content_id);
	}

	public void clicksUp(Integer content_id) {
		this.joinDao.clicksUp(content_id);
	}

	public void create(Join join) {
		this.joinDao.create(join);
	}

	public void delete(Integer content_id) {
		this.joinDao.delete(content_id);
	}

	public void update(Join join) {
		// TODO Auto-generated method stub
		this.joinDao.update(join);
	}

	public void reply(Comment comment) {
		// TODO Auto-generated method stub
		this.joinDao.reply(comment);
	}

	public List<Comment> getCommentByContentID(Integer content_id) {
		// TODO Auto-generated method stub
		return this.joinDao.getCommentByContentID(content_id);
	}

	public void deleteReply(Integer comment_id) {
		// TODO Auto-generated method stub
		this.joinDao.deleteReply(comment_id);
	}

}
