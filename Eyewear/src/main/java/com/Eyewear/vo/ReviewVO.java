package com.Eyewear.vo;

import java.util.Date;

public class ReviewVO {

	private int cnt;
	private int rvno;
	private String mid;
	private String sname;
	private String rvtext;
	private String rvdate;
	private int rvstar;
	
	public ReviewVO() {
	}

	public ReviewVO(int cnt, int rvno, String mid, String sname, String rvtext, String rvdate, int rvstar) {
		super();
		this.cnt = cnt;
		this.rvno = rvno;
		this.mid = mid;
		this.sname = sname;
		this.rvtext = rvtext;
		this.rvdate = rvdate;
		this.rvstar = rvstar;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getRvno() {
		return rvno;
	}

	public void setRvno(int rvno) {
		this.rvno = rvno;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getRvtext() {
		return rvtext;
	}

	public void setRvtext(String rvtext) {
		this.rvtext = rvtext;
	}

	public String getRvdate() {
		return rvdate;
	}

	public void setRvdate(String rvdate) {
		this.rvdate = rvdate;
	}

	public int getRvstar() {
		return rvstar;
	}

	public void setRvstar(int rvstar) {
		this.rvstar = rvstar;
	}

	@Override
	public String toString() {
		return "ReviewVO [cnt=" + cnt + ", rvno=" + rvno + ", mid=" + mid + ", sname=" + sname + ", rvtext=" + rvtext
				+ ", rvdate=" + rvdate + ", rvstar=" + rvstar + "]";
	}

	
	

}
