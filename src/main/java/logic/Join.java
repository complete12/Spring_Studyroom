package logic;

import java.io.Serializable;
import java.sql.Date;

public class Join implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private int content_id;
	private String writer;
	private Date write_time;
	private String title;
	private String content;
	private int member_need;
	private int clicks;
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
	public void setWrite_time(Date write_time) {
		this.write_time = write_time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMember_need() {
		return member_need;
	}
	public void setMember_need(int member_need) {
		this.member_need = member_need;
	}
	public int getClicks() {
		return clicks;
	}
	public void setClicks(int clicks) {
		this.clicks = clicks;
	}
}
