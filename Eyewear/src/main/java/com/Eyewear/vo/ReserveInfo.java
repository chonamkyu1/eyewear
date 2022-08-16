package com.Eyewear.vo;

public class ReserveInfo {

	private ReserveVO reserveVO;
	private StoreVO storeVO;
	
	public ReserveInfo() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	public ReserveVO getReserveVO() {
		return reserveVO;
	}





	public void setReserveVO(ReserveVO reserveVO) {
		this.reserveVO = reserveVO;
	}





	public StoreVO getStoreVO() {
		return storeVO;
	}





	public void setStoreVO(StoreVO storeVO) {
		this.storeVO = storeVO;
	}





	@Override
	public String toString() {
		return "ReserveInfo [reserveVO=" + reserveVO + ", storeVO=" + storeVO + "]";
	}
	
	
	
	
	
}
