package com.Eyewear.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Eyewear.service.MemberService;
import com.Eyewear.service.ReserveService;
import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.Pagination;
import com.Eyewear.vo.ReserveVO;
import com.Eyewear.vo.ReviewVO;
import com.Eyewear.vo.StoreVO;

import jdk.internal.org.jline.utils.Log;

@Controller
public class ReserveController {
	private static final Logger logger = LoggerFactory.getLogger(ReserveController.class);
	
	@Autowired
	private ReserveService reserveService;
	private MemberService memberService;
	
	
	// 예약 페이지
	
	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public String reserveGET(HttpServletRequest request, Model model, StoreVO storeVO
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) throws Exception {
		logger.info("예약 페이지 진입");
		ReviewVO reviewVO = new ReviewVO();
		
		
		HttpSession session = request.getSession();
		
		Object reserveLogin = session.getAttribute("member");
		
		model.addAttribute("reserveLogin", reserveLogin);
		System.out.println("reserveLogin : " + reserveLogin);
		
		List<StoreVO> storeList =  reserveService.storeList(storeVO);
		System.out.println("storeList : " + storeList);
		model.addAttribute("store", storeList);
		
				
		// 페이징
		
		// 전체 게시글 갯수
		int listCnt = reserveService.reviewTotal(reviewVO);
		System.out.println("listCnt : " + listCnt);
		
		Pagination paging = new Pagination();
		paging.pageInfo(page, range, listCnt);
		
		Map<String, Object> map = new HashMap();
		map.put("startList", paging.getStartList());
		map.put("listSize", paging.getListSize());
		
//		System.out.println("map : " + map);
		
		model.addAttribute("pagination", paging);
//		System.out.println("mPage : " + paging);
		
		// 리뷰
		
		List<ReviewVO> rList = reserveService.reviewList(map);
		System.out.println("rList : " + rList);
		model.addAttribute("review", rList);
		
		model.addAttribute("listCnt", listCnt);
		
		return "reserve";
	}
	
	@RequestMapping(value = "/reserve/detailReserve", method = RequestMethod.GET)
	public String detailReserveGET(Model model, StoreVO storeVO, HttpServletRequest request) throws Exception {
		logger.info("상세 예약 페이지 GET");
		
		StoreVO svo =  reserveService.detailStore(storeVO);
		System.out.println("svo : " + svo);

		HttpSession session = request.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("member");  // 세션에 저장된 mid값 가져오기
		model.addAttribute("memberVO", memberVO);
		System.out.println("memberVO 내용 확인 : " + memberVO);
		
		model.addAttribute("svo", svo);
		
		return "detailReserve";
	}
	
	// 예약 등록
	
	@RequestMapping(value = "/reserve/detailReserve", method = RequestMethod.POST)
	public String detailReserveInsertPOST(Model model, ReserveVO reserveVO,  StoreVO storeVO) throws Exception {
		logger.info("상세 예약 등록페이지POST");
		System.out.println("상세 예약 등록페이지POST");
		
		reserveService.reserveInsert(reserveVO);
		
		System.out.println("예약 성공");
		
		return "redirect:/main";
	}
	
	
	// 비로그인으로 예약페이지 들어왔을 때
	@RequestMapping(value = "/user/login/reserve/select", method = RequestMethod.GET)
	public String ReserveLoginGET(StoreVO storeVO) {
		try {
//			
			logger.info("예약페이지에서 로그인 페이지 진입"); 
			StoreVO vo =  reserveService.detailStore(storeVO);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "login";
		
	}
	
	
	@RequestMapping(value = "/user/login/reserve/select", method = RequestMethod.POST)
//	public String login(MemberVO memberVO, Model model, HttpSession session) throws Exception {
	public String ReserveLoginPOST(@RequestParam String snick, HttpServletRequest request, MemberVO memberVO,StoreVO storeVO, RedirectAttributes rttr) throws Exception {
//		System.out.println("postmapping");
//		System.out.println("전달된 데이터 : " + memberVO);
		Map<String, Object> map = new HashMap();
		map.put("snick", snick);
		System.out.println("snick : " + snick);
		
		
		System.out.println("예약페이지 POST ");
		
//		HttpSession session = request.getSession();
//		MemberVO lvo = memberService.login(memberVO);
		
		logger.info("서비스 성공");
		
//		if (lvo == null) {				// 일치하지 않는 아이디, 비밀번호 입력했을 경우
//			int result = 0;
//			rttr.addFlashAttribute("result", result);
//			return "redirect:/user/login";
//		}
		
//		session.setAttribute("member", lvo);   // 아이디, 비밀번호 일치하는 경우 (로그인 성공)!!, 세션 헤더에 저장
		
//		System.out.println("member: " + lvo);
		
		return "redirect:/reserve/detailReserve";
		
		
//		MemberVO loginMember =  memberService.login(memberVO.getMid(), memberVO.getMpassword());
//		System.out.println("loginMember " + loginMember);
//		if(loginMember != null) {
//			System.out.println("로그인 성공");
////			model.addAttribute("memverVO", loginMember);
////			session.setAttribute("memberVO", memberVO);
//			
//			return "main";
//			
//		} else {
//			System.out.println("로그인 실패");
//			return "login";
//		}
		
//		return null;
		
	}
	
	
	// 매장별 리뷰
	@RequestMapping(value = "/review/list", method = RequestMethod.GET)
	public ModelAndView storeReview(Model model, ReviewVO reviewVO
			, @RequestParam String snick
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range
			) throws Exception {
		logger.info("매장리뷰 GET");
		
		Map<String, Object> map = new HashMap();
		
		map.put("snick", snick);
		
		Pagination paging = new Pagination();
		
		int listCnt = reserveService.storeTotal(map);
		
		paging.pageInfo(page, range, listCnt);
		
		map.put("startList", paging.getStartList());
		map.put("listSize", paging.getListSize());
//		
		
		System.out.println("map2222 : " + map);
		
		ModelAndView mv = new ModelAndView();
		
		List<ReviewVO> storeReview =  reserveService.storeReview(map);
		System.out.println("storeReview : " + storeReview);
		
		System.out.println("listCnt~~" + listCnt);
		
		
		mv.setViewName("jsonView");
		model.addAttribute("storeReview",storeReview);
		
		mv.addObject("storeReview", storeReview);
		mv.addObject("listCnt", listCnt);
		
		return mv;
		
	}
	
	
	
}
