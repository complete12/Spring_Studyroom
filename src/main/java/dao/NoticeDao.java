package dao;

import java.util.List;

import logic.Notice;

public interface NoticeDao {

	List<Notice> getNoticeList();

	Notice getNoticeByContentId(Integer content_id);

}
