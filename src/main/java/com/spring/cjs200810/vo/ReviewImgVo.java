package com.spring.cjs200810.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReviewImgVo {
	private int idx;
	private int ridx;
	private String oriFileName;
	private String fileName;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date uploadDate;
	
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getRidx() {
		return ridx;
	}
	public void setRidx(int ridx) {
		this.ridx = ridx;
	}
	public String getOriFileName() {
		return oriFileName;
	}
	public void setOriFileName(String oriFileName) {
		this.oriFileName = oriFileName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	
	
	
}
