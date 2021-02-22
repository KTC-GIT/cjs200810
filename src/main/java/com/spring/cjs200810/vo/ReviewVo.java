package com.spring.cjs200810.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReviewVo {
	private int idx;
	private int gidx;
	private int affirmativeStatus;
	private String writerNick;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date postDate;
	private String content;
	private int helpful;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getGidx() {
		return gidx;
	}
	public void setGidx(int gidx) {
		this.gidx = gidx;
	}
	public int getAffirmativeStatus() {
		return affirmativeStatus;
	}
	public void setAffirmativeStatus(int affirmativeStatus) {
		this.affirmativeStatus = affirmativeStatus;
	}
	public String getWriterNick() {
		return writerNick;
	}
	public void setWriterNick(String writerNick) {
		this.writerNick = writerNick;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHelpful() {
		return helpful;
	}
	public void setHelpful(int helpful) {
		this.helpful = helpful;
	}
	
	
	
}
