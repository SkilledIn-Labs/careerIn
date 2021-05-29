package ai.skilledin.careerin.controller;

import javax.ws.rs.core.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ai.skilledin.careerin.dao.AuthoritiesDao;
import ai.skilledin.careerin.dao.UserDao;
import ai.skilledin.careerin.models.Authorities;
import ai.skilledin.careerin.models.RegisterUser;

@RestController
public class RestControllerApi {
	private static final Logger logger = LoggerFactory.getLogger(RestControllerApi.class);

	@Autowired
	private UserDao userDao;

	@Autowired
	private AuthoritiesDao roleDao;

	@PostMapping("/api/register")
	public Response register(@RequestBody RegisterUser user) {
		logger.info("sign up attempt username:" + user.getUsername());

		user.setEnabled(true);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(12);
		String encodedPassword = passwordEncoder.encode(user.getPassword());

		user.setPassword(encodedPassword);

		userDao.save(user);
		roleDao.save(new Authorities(user.getUsername(), "ROLE_USER"));
		logger.info("sign up successfull username:" + user.getUsername());
		return Response.status(201).entity(user).build();

	}

}
