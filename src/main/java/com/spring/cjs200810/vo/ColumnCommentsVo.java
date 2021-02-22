package com.spring.cjs200810.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ColumnCommentsVo {
	private int idx;
	private int introIdx;
	private String writerNick;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date postDate;
	private String content;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getIntroIdx() {
		return introIdx;
	}
	public void setIntroIdx(int introIdx) {
		this.introIdx = introIdx;
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
	
	
}
