package com.datagearbi.springsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginCotroller {

	@GetMapping("/showMyLoginPage") // thats allocated in DemoSecurityConfig to allow login to make authentication
	public String showMyLoginPage() {

		// that is view name
//		return "login-form";
		return "fancy-login";
	}

	@GetMapping("/access-denied") // thats allocated in DemoSecurityConfig to allow access-denied when wrong authorization
	public String showAccessDenied() {
		
		// that is access denied view
		return "/access-denied";
	}
	
}
