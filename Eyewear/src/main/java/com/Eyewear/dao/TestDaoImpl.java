package com.Eyewear.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Eyewear.service.TestMapper;
import com.Eyewear.vo.TestVO;


@Repository
public class TestDaoImpl implements TestDao {

	@Autowired SqlSession sqlSession;
	
	
	@Override
	public List<TestVO> selectList(TestVO testVO) throws Exception {
		TestMapper mapper = sqlSession.getMapper(TestMapper.class);
		return mapper.selectList(testVO);
	}

}
