package com.Eyewear.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Eyewear.service.ReserveMapper;
import com.Eyewear.vo.ReserveVO;
import com.Eyewear.vo.ReviewVO;
import com.Eyewear.vo.StoreVO;

@Repository
public class ReserveDaoImpl implements ReserveDao{

	@Autowired
	private SqlSession sqlSession;

	
	@Override
	public List<StoreVO> storeList(StoreVO storeVO) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		return mapper.storeList(storeVO);
	}


	@Override
	public StoreVO detailStore(StoreVO storeVO) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		return mapper.detailStore(storeVO);
	}


	@Override
	public List<ReviewVO> reviewList(Map<String, Object> map) throws Exception {
		 ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		return mapper.reviewList(map);
	}


	@Override
	public int reviewTotal(ReviewVO reviewVO) throws Exception {
		 ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
			return mapper.reviewTotal(reviewVO);
	}


	@Override
	public List<ReviewVO> storeReview(Map<String, Object> map) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		return mapper.storeReview(map);
	}


	@Override
	public int storeTotal(Map<String, Object> map) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		return mapper.storeTotal(map);
	}


	@Override
	public void reserveInsert(ReserveVO reserveVO) throws Exception {
		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
		System.out.println("reserveInser DaoImpl");
		mapper.reserveInsert(reserveVO);
	}


//	@Override
//	public StoreVO detailStore(Map<String, String> map) throws Exception {
//		ReserveMapper mapper =  sqlSession.getMapper(ReserveMapper.class);
//		return mapper.detailStore(map);
//	}

}
