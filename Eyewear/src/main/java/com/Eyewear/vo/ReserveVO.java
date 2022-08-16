package com.Eyewear.vo;

import org.springframework.stereotype.Component;

@Component
public class ReserveVO {
	private int rno;
	private String mid;
	private int sno;
	private int rtype;
	private int rstaff;
	private int rage;
	private String rdate;
	private String rtime;
	
	
	private StoreVO storeVO;
	
	public ReserveVO() {
	}

	public ReserveVO(int rno, String mid, int sno, int rtype, int rstaff, int rage, String rdate, String rtime) {
		super();
		this.rno = rno;
		this.mid = mid;
		this.sno = sno;
		this.rtype = rtype;
		this.rstaff = rstaff;
		this.rage = rage;
		this.rdate = rdate;
		this.rtime = rtime;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public int getRtype() {
		return rtype;
	}

	public void setRtype(int rtype) {
		this.rtype = rtype;
	}

	public int getRstaff() {
		return rstaff;
	}

	public void setRstaff(int rstaff) {
		this.rstaff = rstaff;
	}

	public int getRage() {
		return rage;
	}

	public void setRage(int rage) {
		this.rage = rage;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getRtime() {
		return rtime;
	}

	public void setRtime(String rtime) {
		this.rtime = rtime;
	}

	@Override
	public String toString() {
		return "ReserveVO [rno=" + rno + ", mid=" + mid + ", sno=" + sno + ", rtype=" + rtype + ", rstaff=" + rstaff
				+ ", rage=" + rage + ", rdate=" + rdate + ", rtime=" + rtime + "]";
	}

	

	
	
}
