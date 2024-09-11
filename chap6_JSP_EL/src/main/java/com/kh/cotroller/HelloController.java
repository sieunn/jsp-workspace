package com.kh.cotroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
	//index.jsp 기본주소는 / 이기 때문에 따로 GetMapping 을 설정하지 않아도 됨
	
	//controller에서 Model을 활용해서 데이터 전달하기
	@GetMapping("/api/hello")
	public String getHello(Model model) {
		model.addAttribute("msg","안녕하세요. controller에서 데이터를 전달합니다.");
		return "hello"; //hello.jsp 로 이동
	}
	
	@GetMapping("/api/food")
	public String getFood(Model model) {
		return "forTokens"; //forTokens.jsp 로 이동
	}
	
	@GetMapping("/api/rmove")
	public String getRemove() {
		return "rmove"; //remove.jsp 로 이동
	}
	
	@GetMapping("/api/catch")
	public String getCatch() {
		return "ctch";
	}
}
