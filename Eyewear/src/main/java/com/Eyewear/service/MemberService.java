package com.Eyewear.service;

import java.util.List;

import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.ReserveVO;
import com.Eyewear.vo.StoreVO;

public interface MemberService {

	public MemberVO getMember(MemberVO memberVO) throws Exception;
	
	public MemberVO login(MemberVO memberVO) throws Exception;
	public void memberJoin(MemberVO memberVO) throws Exception;
	public int idCheck(String mid) throws Exception;

	public MemberVO findId(MemberVO memberVO) throws Exception;
	public MemberVO findPw(MemberVO memberVO) throws Exception;
	public MemberVO myPage(MemberVO memberVO) throws Exception;

	public void memberUpdate(MemberVO memberVO) throws Exception; // 내 정보 수정

	public List<ReserveVO> myReserveList(ReserveVO reserveVO) throws Exception; // 나의 예약 관리

	public void editPassword(MemberVO memberVO) throws Exception; // 비밀번호 찾기에서 비밀번호 수정


	
	
}
