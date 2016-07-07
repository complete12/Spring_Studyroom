package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

import logic.Notice;
import logic.NoticeService;

@Repository
public class NoticeDaoImpl implements NoticeDao{
	
	private static final String SELECT_ALL = "SELECT content_id, writer, write_time, title, content FROM BOARD_NOTICE";
	private static final String SELECT_BY_CONTENT_ID = "SELECT content_id, writer, write_time, title, content FROM BOARD_NOTICE WHERE content_id=?";

	
	private SimpleJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.template = new SimpleJdbcTemplate(dataSource);
	}

	public List<Notice> getNoticeList() {
		// TODO Auto-generated method stub
		RowMapper<Notice> mapper = new BeanPropertyRowMapper<Notice>(Notice.class);
		return this.template.query(NoticeDaoImpl.SELECT_ALL, mapper);
	}

	public Notice getNoticeByContentId(Integer content_id) {
		// TODO Auto-generated method stub
		RowMapper<Notice> mapper = new BeanPropertyRowMapper<Notice>(Notice.class);
		return this.template.queryForObject(NoticeDaoImpl.SELECT_BY_CONTENT_ID, mapper, content_id);
	}

}
