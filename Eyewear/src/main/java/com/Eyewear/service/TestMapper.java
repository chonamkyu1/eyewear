package com.Eyewear.service;

import java.util.List;

import com.Eyewear.vo.TestVO;

public interface TestMapper {
	
	public List<TestVO> selectList(TestVO testVO) throws Exception;
}
