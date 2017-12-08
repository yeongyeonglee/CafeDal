package com.cafedal.webapp.entity;

import java.util.Date;

public class AdCmtView {


	private String id;
	private Date usedate;
	private String usecontent;
	private Date dcdate;
	private String dccontent;	
	
	public AdCmtView() {
	}

	public AdCmtView(String id, Date usedate, String usecontent, Date dcdate, String dccontent) {
		super();
		this.id = id;
		this.usedate = usedate;
		this.usecontent = usecontent;
		this.dcdate = dcdate;
		this.dccontent = dccontent;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getUsedate() {
		return usedate;
	}

	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}

	public String getUsecontent() {
		return usecontent;
	}

	public void setUsecontent(String usecontent) {
		this.usecontent = usecontent;
	}

	public Date getDcdate() {
		return dcdate;
	}

	public void setDcdate(Date dcdate) {
		this.dcdate = dcdate;
	}

	public String getDccontent() {
		return dccontent;
	}

	public void setDccontent(String dccontent) {
		this.dccontent = dccontent;
	}


	
	

}