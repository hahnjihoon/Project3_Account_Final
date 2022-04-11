package com.test.Accounts.calendar.model.vo;

import java.sql.Date;

public class CalDto implements java.io.Serializable{

	private static final long serialVersionUID = 9126367204432468464L;
	
	private int seq;  //일정번호pk
	private String id;  //아이디
	private String title;  //일정제목
	private String content;  //일정내용
	private String mdate;  //일정날짜
	private java.util.Date regdate;  //일정작성일
	
	private String year;
	private String month;
	private String date;
	private String hour;
	private String min;
	
	private int cameara_total1;  

	public CalDto() {
		super();
	}

	public CalDto(int seq, String id, String title, String content, String mdate, Date regdate) {
		super();
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.mdate = mdate;
		this.regdate = regdate;
	}
	
	

	public int getCameara_total1() {
		return cameara_total1;
	}

	public void setCameara_total1(int cameara_total1) {
		this.cameara_total1 = cameara_total1;
	}
	
	

	public CalDto(int seq, String id, String title, String content, String mdate, java.util.Date regdate, String year,
			String month, String date, String hour, String min, int cameara_total1) {
		super();
		this.seq = seq;
		this.id = id;
		this.title = title;
		this.content = content;
		this.mdate = mdate;
		this.regdate = regdate;
		this.year = year;
		this.month = month;
		this.date = date;
		this.hour = hour;
		this.min = min;
		this.cameara_total1 = cameara_total1;
	}

	public int getSeq() {
		return seq;
	}

	public CalDto(int seq, String id, String title, String content, String mdate, java.util.Date regdate, String year,
		String month, String date, String hour, String min) {
	super();
	this.seq = seq;
	this.id = id;
	this.title = title;
	this.content = content;
	this.mdate = mdate;
	this.regdate = regdate;
	this.year = year;
	this.month = month;
	this.date = date;
	this.hour = hour;
	this.min = min;
}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public java.util.Date getRegdate() {
		return regdate;
	}

	public void setRegdate(java.sql.Date regdate) {
		this.regdate = regdate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "CalDto [seq=" + seq + ", id=" + id + ", title=" + title + ", content=" + content + ", mdate=" + mdate
				+ ", regdate=" + regdate + "]";
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getHour() {
		return hour;
	}

	public void setHour(String hour) {
		this.hour = hour;
	}

	public String getMin() {
		return min;
	}

	public void setMin(String min) {
		this.min = min;
	}
	
	
	
	
	
	
}