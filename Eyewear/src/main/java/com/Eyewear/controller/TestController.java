package com.Eyewear.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Eyewear.service.TestService;
import com.Eyewear.vo.TestVO;

@Controller
public class TestController {

	
	@Autowired
	private TestService testService;
	
	
	@GetMapping("/test")
	public String testpage() {
		return "test";
	}
	
	@RequestMapping(value = "/testList")
	public String testList(TestVO testVO, Model model) throws Exception {
		
		List<TestVO> list = testService.selectList(testVO);
		System.out.println("list : " + list);
		
		model.addAttribute("list", testService.selectList(testVO));
		return "testList";
	}
	
}
