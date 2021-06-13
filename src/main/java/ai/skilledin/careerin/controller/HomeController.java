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

	@RequestMapping("/home")
	public String index() {
		return "index";
	}

	@RequestMapping("/loginPage")
	public String login() {
		return "login";
	}

	@RequestMapping("/about")
	public String aboutUs() {
		return "aboutUs";
	}

	@RequestMapping("/privacy")
	public String privacy() {
		return "privacy";
	}

	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}

	@RequestMapping("/team")
	public String team() {
		return "team";
	}

	@RequestMapping("user")
	@ResponseBody
	public Principal user(Principal principal) {
		return principal;
	}

}
