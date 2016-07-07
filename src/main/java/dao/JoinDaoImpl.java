package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

import logic.Comment;
import logic.Join;

@Repository
public class JoinDaoImpl implements JoinDao{
	
	private static final String SELECT_ALL = "SELECT * FROM BOARD_JOIN ORDER BY content_id DESC";
	private static final String SELECT_BY_CONTENT_ID = "SELECT * FROM BOARD_JOIN WHERE content_id=?";
	private static final String UPDATE_CLICKS ="UPDATE BOARD_JOIN SET clicks = clicks+1 WHERE content_id=?";
	private static final String INSERT = "INSERT INTO BOARD_JOIN(writer, write_time, title, content, member_need, clicks) VALUES (?,?,?,?,?,?)";
	private static final String DELETE_BY_CONTENT_ID = "DELETE FROM BOARD_JOIN WHERE content_id=?";
	private static final String UPDATE_CONTENT = "UPDATE BOARD_JOIN SET title=?, content=?, member_need=? WHERE content_id=?";

	private static final String INSERT_REPLY = "INSERT INTO COMMENT_JOIN(content_id, writer, write_time, content) VALUES(?,?,?,?)";
	private static final String SELECT_REPLY_LIST = "SELECT * FROM COMMENT_JOIN WHERE content_id=?;";
	private static final String DELETE_REPLY = "DELETE FROM COMMENT_JOIN WHERE comment_id=?";
	private static final String DELETE_REPLY_BY_CONTENT_ID = "DELETE FROM COMMENT_JOIN WHERE content_id=?";

	
	private SimpleJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	public List<Join> getAllList() {
		RowMapper<Join> mapper = new BeanPropertyRowMapper<Join>(Join.class);
		return this.template.query(JoinDaoImpl.SELECT_ALL, mapper);
	}

	public Join getContentByContentId(Integer content_id) {
		// TODO Auto-generated method stub
		RowMapper<Join> mapper = new BeanPropertyRowMapper<Join>(Join.class);
		return this.template.queryForObject(JoinDaoImpl.SELECT_BY_CONTENT_ID, mapper, content_id);	
	}

	public void clicksUp(Integer content_id) {
		// TODO Auto-generated method stub
		this.template.update(JoinDaoImpl.UPDATE_CLICKS, content_id);
	}

	public void create(Join join) {
		this.template.update(JoinDaoImpl.INSERT, join.getWriter(), join.getWrite_time(), join.getTitle(), join.getContent(), join.getMember_need(), join.getClicks());
	}

	public void delete(Integer content_id) {
		this.template.update(JoinDaoImpl.DELETE_REPLY_BY_CONTENT_ID, content_id);
		this.template.update(JoinDaoImpl.DELETE_BY_CONTENT_ID, content_id);
	}

	public void update(Join join) {
		// TODO Auto-generated method stub
		System.out.println("daoimpl" + join.getContent_id() + join.getTitle());
		this.template.update(JoinDaoImpl.UPDATE_CONTENT, join.getTitle(), join.getContent(), join.getMember_need(), join.getContent_id());
		System.out.println("daoimpl22" + join.getContent_id() + join.getTitle());

	}

	public void reply(Comment comment) {
		// TODO Auto-generated method stub
		this.template.update(JoinDaoImpl.INSERT_REPLY, comment.getContent_id(), comment.getWriter(), comment.getWrite_time(), comment.getContent());
	}

	public List<Comment> getCommentByContentID(Integer content_id) {
		// TODO Auto-generated method stub
		RowMapper<Comment> mapper = new BeanPropertyRowMapper<Comment>(Comment.class);
		return this.template.query(JoinDaoImpl.SELECT_REPLY_LIST, mapper, content_id);
	}

	public void deleteReply(Integer comment_id) {
		// TODO Auto-generated method stub
		this.template.update(JoinDaoImpl.DELETE_REPLY, comment_id);
	}
}
