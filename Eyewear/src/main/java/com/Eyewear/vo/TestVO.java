package com.Eyewear.vo;

public class TestVO {
	
	private int m_no;
	private String m_name;
	private String m_job;
	private String m_dept;
	
	
	
	public TestVO() {
	}



	public TestVO(int m_no, String m_name, String m_job, String m_dept) {
		super();
		this.m_no = m_no;
		this.m_name = m_name;
		this.m_job = m_job;
		this.m_dept = m_dept;
	}



	public int getM_no() {
		return m_no;
	}



	public void setM_no(int m_no) {
		this.m_no = m_no;
	}



	public String getM_name() {
		return m_name;
	}



	public void setM_name(String m_name) {
		this.m_name = m_name;
	}



	public String getM_job() {
		return m_job;
	}



	public void setM_job(String m_job) {
		this.m_job = m_job;
	}



	public String getM_dept() {
		return m_dept;
	}



	public void setM_dept(String m_dept) {
		this.m_dept = m_dept;
	}



	@Override
	public String toString() {
		return "TestVO [m_no=" + m_no + ", m_name=" + m_name + ", m_job=" + m_job + ", m_dept=" + m_dept + "]";
	}
	
	
	
	
}
