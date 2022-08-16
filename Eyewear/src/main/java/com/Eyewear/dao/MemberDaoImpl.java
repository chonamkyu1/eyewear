package com.Eyewear.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.Eyewear.service.MemberMapper;
import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.ReserveVO;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberVO login(MemberVO memberVO) {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		
		return mapper.login(memberVO);
	}

	@Override
	public void memberJoin(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		System.out.println("memberDaoImpl");
		 mapper.memberJoin(memberVO);
	}

	@Override
	public int idCheck(String mid) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.idCheck(mid);
	}

	@Override
	public MemberVO findId(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.findId(memberVO);
		
	}

	@Override
	public MemberVO findPw(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.findPw(memberVO);
	}

	@Override
	public MemberVO myPage(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.myPage(memberVO);
	}

	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		mapper.memberUpdate(memberVO);
	}

	@Override
	public List<ReserveVO> myReserveList(ReserveVO reserveVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		return mapper.myReserveList(reserveVO);
	}

	@Override
	public void editPassword(MemberVO memberVO) throws Exception {
		MemberMapper mapper =  sqlSession.getMapper(MemberMapper.class);
		mapper.editPassword(memberVO);
	}

}
