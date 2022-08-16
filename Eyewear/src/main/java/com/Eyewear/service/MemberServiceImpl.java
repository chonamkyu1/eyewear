package com.Eyewear.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Eyewear.dao.MemberDao;
import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.ReserveVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberDao;
	
	
	@Override
	public MemberVO getMember(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return memberDao.login(memberVO);
	}

	@Override
	public void memberJoin(MemberVO memberVO) throws Exception {
		System.out.println("serviceImpl");
		memberDao.memberJoin(memberVO);
	}

	@Override
	public int idCheck(String mid) throws Exception {
		return memberDao.idCheck(mid);
	}

	@Override
	public MemberVO findId(MemberVO memberVO) throws Exception {
		return memberDao.findId(memberVO);
	}

	@Override
	public MemberVO findPw(MemberVO memberVO) throws Exception {
		return memberDao.findPw(memberVO);
	}

	@Override
	public MemberVO myPage(MemberVO memberVO) throws Exception {
		return memberDao.myPage(memberVO);
	}

	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {
		memberDao.memberUpdate(memberVO);
	}

	@Override
	public List<ReserveVO> myReserveList(ReserveVO reserveVO) throws Exception {
		return memberDao.myReserveList(reserveVO);
	}

	@Override
	public void editPassword(MemberVO memberVO) throws Exception {
		memberDao.editPassword(memberVO);
	}

	
	
	
	
}
