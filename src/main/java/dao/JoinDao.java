package dao;

import java.util.List;

import logic.Comment;
import logic.Join;

public interface JoinDao {

	List<Join> getAllList();

	Join getContentByContentId(Integer content_id);

	void clicksUp(Integer content_id);

	void create(Join join);

	void delete(Integer content_id);

	void update(Join join);

	void reply(Comment comment);

	List<Comment> getCommentByContentID(Integer content_id);

	void deleteReply(Integer comment_id);

}
