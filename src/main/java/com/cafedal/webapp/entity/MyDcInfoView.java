package com.cafedal.webapp.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MyDcInfoView {
	private int dcinfonum;
	private String id;
	private String cafecode;
	private String cafename;
	private String title;
	private String content;
	@DateTimeFormat(pattern="yyyy-MM-dd")private Date startdate;
	@DateTimeFormat(pattern="yyyy-MM-dd")private Date finishdate;
	
	
	public MyDcInfoView() {

	}

	public MyDcInfoView(int dcinfonum, String id, String cafecode, String cafename, String title, String content, Date startdate,
			Date finishdate) {
		super();
		this.dcinfonum = dcinfonum;
		this.id = id;
		this.cafecode = cafecode;
		this.cafename = cafename;
		this.title = title;
		this.content = content;
		this.startdate = startdate;
		this.finishdate = finishdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCafecode() {
		return cafecode;
	}

	public void setCafecode(String cafecode) {
		this.cafecode = cafecode;
	}

	public String getCafename() {
		return cafename;
	}

	public void setCafename(String cafename) {
		this.cafename = cafename;
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

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getFinishdate() {
		return finishdate;
	}

	public void setFinishdate(Date finishdate) {
		this.finishdate = finishdate;
	}

	public int getDcinfonum() {
		return dcinfonum;
	}

	public void setDcinfonum(int dcinfonum) {
		this.dcinfonum = dcinfonum;
	}

}
