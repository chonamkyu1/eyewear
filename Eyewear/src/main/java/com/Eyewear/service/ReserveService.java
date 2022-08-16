package com.Eyewear.service;

import java.util.List;
import java.util.Map;

import com.Eyewear.vo.ReserveVO;
import com.Eyewear.vo.ReviewVO;
import com.Eyewear.vo.StoreVO;


public interface ReserveService {
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception;

//	public StoreVO detailStore(Map<String, String> map) throws Exception;
	public StoreVO detailStore(StoreVO storeVO) throws Exception;
	
	public List<ReviewVO> reviewList(Map<String, Object> map) throws Exception; // 리뷰 리스트

	public int reviewTotal(ReviewVO reviewVO) throws Exception; // 리뷰 총 갯수
	
	public int storeTotal(Map<String, Object> map) throws Exception; // 매장별 리뷰 총 갯수

	public List<ReviewVO> storeReview(Map<String, Object> map) throws Exception; // 매장별 리뷰 갯수

	public void reserveInsert(ReserveVO reserveVO) throws Exception; // 예약 등록
	
}
