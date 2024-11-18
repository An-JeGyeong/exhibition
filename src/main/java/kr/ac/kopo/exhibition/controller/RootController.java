package kr.ac.kopo.exhibition.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.exhibition.model.Member;
import kr.ac.kopo.exhibition.service.MemberService;

@Controller
public class RootController {
	
	@Autowired
	MemberService memberservice;

	@GetMapping("/")
	String index() {
		return "index";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(Member item, HttpSession session) {
		if (memberservice.login(item)) {
			session.setAttribute("member", item);
			
			return "redirect:.";
		}else {
			return "redirect:login";
		}
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:.";
	}
	
	@GetMapping("/signup")
	String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	String signup(Member item) {
		memberservice.signup(item);
		
		return "redirect:.";
	}
	
	@ResponseBody
	@GetMapping("/id_check/{id}")
	String idCheck(@PathVariable String id) {
		
		if(memberservice.isUnique(id)) {
			return "OK";
		}else {
			return "FAIL";
		}
	}
}
