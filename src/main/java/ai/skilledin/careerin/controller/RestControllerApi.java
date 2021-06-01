package ai.skilledin.careerin.controller;

import java.util.List;

import javax.ws.rs.core.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ai.skilledin.careerin.dao.AuthoritiesDao;
import ai.skilledin.careerin.dao.SubjectDao;
import ai.skilledin.careerin.dao.UserDao;
import ai.skilledin.careerin.models.Authorities;
import ai.skilledin.careerin.models.RegisterUser;
import ai.skilledin.careerin.models.RoleModel;
import ai.skilledin.careerin.models.Subject;

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

	@Autowired
	public SubjectDao subjectDao;

	@GetMapping("/api/getSubjects")
	public List<Subject> populateSubject() {
		logger.info("Subject List called");

		List<Subject> findAll = subjectDao.findAll();
		logger.info("Subject List " + findAll);

		return findAll;
	}

	@PostMapping("/api/predict")
	public Response predict(@RequestBody RoleModel obj) {
		logger.info("" + obj);
		return Response.status(201).entity("test").build();

	}

}
