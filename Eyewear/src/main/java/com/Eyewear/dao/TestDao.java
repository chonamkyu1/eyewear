package com.Eyewear.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.Eyewear.vo.TestVO;

public interface TestDao {
	public List<TestVO> selectList(TestVO testVO) throws Exception;
}
