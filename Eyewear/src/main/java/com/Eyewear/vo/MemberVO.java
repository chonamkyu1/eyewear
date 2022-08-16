package com.Eyewear.vo;

public class MemberVO {

	private int mno;
	private String mid;
	private String mpassword;
	private String mname;
	private String mgender;
	private String mphone;
	private String memail;
	private String regDate;
	private int adminCk;
	
	
	public MemberVO() {
	}


	public MemberVO(int mno, String mid, String mpassword, String mname, String mgender, String mphone, String memail,
			String regDate) {
		super();
		this.mno = mno;
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
		this.mgender = mgender;
		this.mphone = mphone;
		this.memail = memail;
		this.regDate = regDate;
	}


	public int getMno() {
		return mno;
	}


	public void setMno(int mno) {
		this.mno = mno;
	}


	public String getMid() {
		return mid;
	}


	public void setMid(String mid) {
		this.mid = mid;
	}


	public String getMpassword() {
		return mpassword;
	}


	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getMgender() {
		return mgender;
	}


	public void setMgender(String mgender) {
		this.mgender = mgender;
	}


	public String getMphone() {
		return mphone;
	}


	public void setMphone(String mphone) {
		this.mphone = mphone;
	}


	public String getMemail() {
		return memail;
	}


	public void setMemail(String memail) {
		this.memail = memail;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	public int getAdminCk() {
		return adminCk;
	}


	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}


	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + ", mgender="
				+ mgender + ", mphone=" + mphone + ", memail=" + memail + ", regDate=" + regDate + ", adminCk="
				+ adminCk + "]";
	}


	

	
	
}
	