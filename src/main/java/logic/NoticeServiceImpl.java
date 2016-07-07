package logic;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.NoticeDao;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDao noticeDao;
	
	public List<Notice> getNoticeList(){
		return this.noticeDao.getNoticeList();
	}

	public Notice getNoticeByContentID(Integer content_id) {
		// TODO Auto-generated method stub
		return this.noticeDao.getNoticeByContentId(content_id);
	}

}
