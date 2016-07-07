package logic;

import java.util.List;

public interface JoinService {

	List<Join> getNoticeList();

	Join getContentByContentID(Integer content_id);

	void clicksUp(Integer content_id);

	void create(Join join);

	void delete(Integer content_id);

	void update(Join join);

	void reply(Comment comment);

	List<Comment> getCommentByContentID(Integer content_id);

	void deleteReply(Integer comment_id);

}
