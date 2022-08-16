package com.Eyewear.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.Eyewear.vo.TestVO;


public interface TestService {

	public List<TestVO> selectList(TestVO testVO) throws Exception;
	
}
