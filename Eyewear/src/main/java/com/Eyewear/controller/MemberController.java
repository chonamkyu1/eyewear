package com.Eyewear.controller;

import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Eyewear.service.MemberService;
import com.Eyewear.vo.MemberVO;
import com.Eyewear.vo.ReserveVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	// 로그인 페이지
	
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
	public String loginGET() throws Exception {
		logger.info("로그인 페이지 진입"); 
		return "login";
	}
	
	
//	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
//	public String loginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
////		System.out.println("postmapping");
////		System.out.println("전달된 데이터 : " + memberVO);
//	
//		HttpSession session = request.getSession();
//		MemberVO lvo = memberService.login(memberVO);
//		
//		if (lvo == null) {				// 일치하지 않는 아이디, 비밀번호 입력했을 경우
//			int result = 0;
//			rttr.addFlashAttribute("result", result);
//			return "redirect:/user/login";
//		}
//		session.setAttribute("member", lvo);   // 아이디, 비밀번호 일치하는 경우 (로그인 성공)!!, 세션 헤더에 저장
//		
//		System.out.println("member: " + lvo);
//		
//		return "redirect:/main";
//	}
	
	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		String rawPw = "";
		String encodePw = "";
		
		MemberVO lvo = memberService.login(memberVO); // 제출한 아이디와 일치하는 아이디가 있는지
		
		if (lvo != null) { // 일치하는 아이디 존재시
			
			rawPw = memberVO.getMpassword(); // 사용자가 제출한 비밀번호
			encodePw = lvo.getMpassword(); // 데이터베이스에 저장한 인코딩된 비밀번호
			
			if (true == pwEncoder.matches(rawPw, encodePw)) { // 비밀번호 일치여부 판단 !!
//				lvo.setMpassword(""); // 인코딩된 비밀번호 지움 why? jsp파일에서 보여줄 필요가 없으니까
				session.setAttribute("member", lvo);
				return "redirect:/main";
				
			} else { 
				rttr.addFlashAttribute("result", 0);
				return "redirect:/user/login"; // 로그인 페이지로 이동
			}
			
		} else {  // 일치하는 아이디 존재하지 않을 시 (로그인 실패)
			rttr.addFlashAttribute("result", 0);
			return "redirect:/user/login"; // 로그인 페이지로 이동
		}
		
		
	}
	
	
	// 메인페이지 로그아웃
	@RequestMapping(value="/user/logout", method = RequestMethod.GET)
	public String logoutMainGET(HttpServletRequest request) throws Exception {
		
		logger.info("로그아웃 메서드 진입");
		
		HttpSession session = request.getSession();  
		
		session.invalidate(); // 기존 세션 제거
		
		return "redirect:/main";
	}
	
	// 아이디 찾기
	@RequestMapping(value = "/user/find_id", method = RequestMethod.GET)
	public String findIdGET() throws Exception {
		logger.info("아이디찾기 페이지 GET");
		
		return "findId";
	}
	
	@RequestMapping(value = "/user/find_id", method = RequestMethod.POST)
	public String findIdPOST(Model model, MemberVO memberVO) throws Exception {
		logger.info("아이디찾기 페이지 POST");
		
		MemberVO fvo = memberService.findId(memberVO);
		System.out.println("fvo : " + fvo);
		
		
		logger.info("findId service 성공");
		
		model.addAttribute("fvo", fvo);
		

		return "afterFindId";
	}
	
	// 비밀번호 찾기
	@RequestMapping(value = "/user/find_pw", method = RequestMethod.GET)
	public String findPwGET() throws Exception {
		logger.info("비밀번호찾기 페이지 GET");
		
		return "findPw";
	}
	
	@RequestMapping(value = "/user/find_pw", method = RequestMethod.POST)
	public String findPwPOST(Model model, MemberVO memberVO) throws Exception {
		logger.info("비밀번호찾기 페이지 POST");
		
		MemberVO result = memberService.findPw(memberVO);
		
		model.addAttribute("mvo", result);
		
		logger.info("result : " + result);
//		logger.info("findPw service 성공");
		
		return "afterFindPw";
	}
	
	
//	@RequestMapping(value = "user/afterFind_id", method = RequestMethod.GET)
//	public String afterFIndId() throws Exception {
//		System.out.println("요기");
//		
//		
//		return "afterFindId";
//	}
//	
//	@RequestMapping(value = "/user/afterFind_pw", method = RequestMethod.GET)
//	public String afterFIndPwGET() throws Exception {
//		logger.info("비밀번호 수정GET");
//		
//		
//		
//		return "afterFindPw";
//	}
	
	
	@RequestMapping(value = "/user/afterFind_pw", method = RequestMethod.POST)
	public String afterFIndPwPOST(MemberVO memberVO) throws Exception {
		logger.info("비밀번호 수정POST");
		
		memberService.editPassword(memberVO);
		
		System.out.println("비밀번호 수정 성공");
		
		
		
		
		return "redirect:/user/login";
	}
	
	// 마이페이지
	
	@RequestMapping(value = "/user/edit", method = RequestMethod.GET)
	public String myPageGET(HttpServletRequest request, Model model) throws Exception {
		logger.info("마이페이지 GET");
		HttpSession session = request.getSession();
		
		if(session.getAttribute("member")==null) {
			return "redirect:/main";
		}
		
		MemberVO mid = (MemberVO) session.getAttribute("member");  // 세션에 저장된 mid값 가져오기
		model.addAttribute("memberVO", mid);
		System.out.println("memberVO 내용 확인 : " + mid);
		
		
		return "mypage";
		
		
	}
	
	
	@RequestMapping(value = "/user/edit", method = RequestMethod.POST)
	public String myPagePOST(HttpServletRequest request, MemberVO memberVO, RedirectAttributes rttr) throws Exception {
		logger.info("마이페이지 POST");
		
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		
		rawPw =  memberVO.getMpassword(); // 비밀번호 데이터 얻음
		System.out.println("rawPw : " + rawPw);
		
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		System.out.println("encodePw : " + encodePw);
		
		memberVO.setMpassword(encodePw); // 인코딩된 비밀번호 다시 객체 저장
		
		memberService.memberUpdate(memberVO);

		
		System.out.println("수정 성공~ ");
		
//		session.setAttribute("member", mvo);
//		MemberVO mvo = memberService.myPage(memberVO);
//		System.out.println("member " + mvo);
		
		return "mypage";
	}
	
	// 마이페이지 제작현황 
	@RequestMapping(value = "/user/status", method = RequestMethod.GET)
	public String myPageStatusGET() throws Exception {
		logger.info("마이페이지 제작현황 조회");
		
		
		return "status";
	}
	
	// 마이페이지 예약현황 
	@RequestMapping(value = "/reserve/list", method = RequestMethod.GET)
	public String myPageReserveGET(HttpServletRequest request, Model model, ReserveVO reserveVO) throws Exception {
		logger.info("마이페이지 예약관리");
		
		HttpSession session = request.getSession();
		
//		Object mid = session.getAttribute("member");
		MemberVO mvo = (MemberVO) session.getAttribute("member"); 
		
		System.out.println("mvo: " + mvo);
		
		String mid = mvo.getMid();
		
		System.out.println("mid : " + mid);
		
		reserveVO.setMid(mid);
		
		List<ReserveVO> myReserveList =  memberService.myReserveList(reserveVO);
		System.out.println("myReserveList" + myReserveList);
		
		
		model.addAttribute("list", myReserveList);
		
		
		return "myReserve";
	}
	
	// 마이페이지 나의 구매후기 
		@RequestMapping(value = "/user/review", method = RequestMethod.GET)
		public String myPageReviewGET() throws Exception {
			logger.info("마이페이지 나의 구매후기");
			
			
			return "review";
		}
	
	
	// 회원가입
	@RequestMapping(value = "/user/join", method = RequestMethod.GET)
	public String joinGET() throws Exception {
		logger.info("회원가입 페이지 joinGet");
		
		return "join";
	}
	
	
	// 회원가입~!!
	@RequestMapping(value = "/user/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO memberVO) throws Exception {
		logger.info("회원가입 페이지 joinPost");
//		memberService.memberJoin(memberVO);   // 비밀번호 인코딩하기 전
//		logger.info("join service 성공");	
		
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		
		rawPw =  memberVO.getMpassword(); // 비밀번호 데이터 얻음
		System.out.println("rawPw : " + rawPw);
		
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		System.out.println("encodePw : " + encodePw);
		
		memberVO.setMpassword(encodePw); // 인코딩된 비밀번호 다시 객체 저장
		
		// 회원가입 쿼리 실행
		memberService.memberJoin(memberVO);
		
		
		
		return "redirect:/main";
	}
	
	
	@RequestMapping(value = "/user/memberIdChk", method = RequestMethod.POST)
	@ResponseBody // <- 해주지 않으면 다시 join.jsp로 메서드 결과가 반환되지 않는다.
	public String memberIdChkPost(String mid) throws Exception {
//		logger.info("memberIdChk");

		int result = memberService.idCheck(mid);
//		logger.info("결과값 : " + result);

		if(result != 0) {
			return "fail";  // 중복아이디 존재
		} else {
			return "success";  // 중복아이디 없음
		}
		
	}
	
	
	@RequestMapping(value = "/user/mailCheck", method = RequestMethod.GET)
	@ResponseBody // 다시 jsp로 데이터를 전송하기 위해서는 꼭 필요
	public String mailCheckGET(String memail) throws Exception {
		
		// 뷰(view)로부터 넘어온 데이터 확인
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + memail);
		
		// 인증번호(난수) 생성
		Random random = new Random();
		
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호: " + checkNum);
		
		//이메일 보니기
		String setFrom = "wh15312@naver.com";   //disptcher.servlet 아이디와 동일해야함
		String toMail = memail;  // 수신 받을 이메일
		String title = "회원가입 인증 이메일 입니다."; 
		String content = 
				"홈페이지를 방문해주셔서 감사합니다." + 
				"<br><br>" + 
				"인증 번호는 " + checkNum + "입니다." +
				"<br>" +
				"해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
		
		String num = Integer.toString(checkNum);
		

		return num;
	}
	
	
	
}
