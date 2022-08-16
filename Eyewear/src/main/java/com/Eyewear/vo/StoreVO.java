package com.Eyewear.vo;

import org.springframework.stereotype.Component;

@Component
public class StoreVO {
	private int sno;
	private String simg;
	private String sname;
	private String ssubname;
	private String snick;
	private String sphone;
	private String stime;
	private String stext;
	private double slat;
	private double slng;
	
	public StoreVO() {
	}

	public StoreVO(int sno, String simg, String sname, String ssubname, String snick, String sphone, String stime,
			String stext, double slat, double slng) {
		super();
		this.sno = sno;
		this.simg = simg;
		this.sname = sname;
		this.ssubname = ssubname;
		this.snick = snick;
		this.sphone = sphone;
		this.stime = stime;
		this.stext = stext;
		this.slat = slat;
		this.slng = slng;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getSimg() {
		return simg;
	}

	public void setSimg(String simg) {
		this.simg = simg;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSsubname() {
		return ssubname;
	}

	public void setSsubname(String ssubname) {
		this.ssubname = ssubname;
	}

	public String getSnick() {
		return snick;
	}

	public void setSnick(String snick) {
		this.snick = snick;
	}

	public String getSphone() {
		return sphone;
	}

	public void setSphone(String sphone) {
		this.sphone = sphone;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}

	public String getStext() {
		return stext;
	}

	public void setStext(String stext) {
		this.stext = stext;
	}

	public double getSlat() {
		return slat;
	}

	public void setSlat(double slat) {
		this.slat = slat;
	}

	public double getSlng() {
		return slng;
	}

	public void setSlng(double slng) {
		this.slng = slng;
	}

	@Override
	public String toString() {
		return "StoreVO [sno=" + sno + ", simg=" + simg + ", sname=" + sname + ", ssubname=" + ssubname + ", snick="
				+ snick + ", sphone=" + sphone + ", stime=" + stime + ", stext=" + stext + ", slat=" + slat + ", slng="
				+ slng + "]";
	}

	
	
	
}
