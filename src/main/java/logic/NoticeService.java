package logic;

import java.util.List;

public interface NoticeService {

	List<Notice> getNoticeList();
	Notice getNoticeByContentID(Integer content_id);

}
