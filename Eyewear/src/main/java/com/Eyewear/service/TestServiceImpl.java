package com.Eyewear.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Eyewear.dao.TestDao;
import com.Eyewear.vo.TestVO;


@Service
public class TestServiceImpl implements TestService{

	@Autowired TestDao testDao;
	
	
	@Override
	public List<TestVO> selectList(TestVO testVO) throws Exception {
		return testDao.selectList(testVO);
	}

}
