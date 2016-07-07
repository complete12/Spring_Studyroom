package logic;

import java.io.Serializable;
import java.sql.Date;

public class Comment implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int comment_id;
	private int content_id;
	private String writer;
	private Date write_time;
	private String content;
	
	
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public int getContent_id() {
		return content_id;
	}
	public void setContent_id(int content_id) {
		this.content_id = content_id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getWrite_time() {
		return write_time;
	}
	public void setWrite_time(Date time) {
		this.write_time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	

}
