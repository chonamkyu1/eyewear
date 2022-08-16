package com.Eyewear.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Eyewear.dao.ReserveDao;
import com.Eyewear.vo.ReserveVO;
import com.Eyewear.vo.ReviewVO;
import com.Eyewear.vo.StoreVO;

@Service
public class ReserveServiceImpl implements ReserveService {

	@Autowired
	ReserveDao reserveDao;
	
	@Override
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		return reserveDao.storeList(storeVO);
	}

	@Override
	public StoreVO detailStore(StoreVO storeVO) throws Exception {
		return reserveDao.detailStore(storeVO);
	}

	@Override
	public List<ReviewVO> reviewList(Map<String, Object> map) throws Exception {
		return reserveDao.reviewList(map);
	}

	@Override
	public int reviewTotal(ReviewVO reviewVO) throws Exception {
		return reserveDao.reviewTotal(reviewVO);
	}

	@Override
	public List<ReviewVO> storeReview(Map<String, Object> map) throws Exception {
		return reserveDao.storeReview(map);
	}

	@Override
	public int storeTotal(Map<String, Object> map) throws Exception {
		return reserveDao.storeTotal(map);
	}

	@Override
	public void reserveInsert(ReserveVO reserveVO) throws Exception {
		System.out.println("reserveInsertImpl ~~~~");
			
		reserveDao.reserveInsert(reserveVO);
	}


//	@Override
//	public StoreVO detailStore(Map<String, String> map) throws Exception {
//		return reserveDao.detailStore(map);
//	}

	
	
}
