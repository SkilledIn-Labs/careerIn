package ai.skilledin.careerin.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/thankyou")
	public String thankyou() {
		return "thankyou";
	}

	@RequestMapping("user")
	@ResponseBody
	public Principal user(Principal principal) {
		return principal;
	}

}
