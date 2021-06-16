package ai.skilledin.careerin.controller;

import java.util.List;
import java.util.TreeMap;

import javax.servlet.http.HttpSession;
import javax.ws.rs.core.Response;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import ai.skilledin.careerin.automl.XGBoostUtils;
import ai.skilledin.careerin.dao.AuthoritiesDao;
import ai.skilledin.careerin.dao.RoleModelDao;
import ai.skilledin.careerin.dao.TrainingAnswersDao;
import ai.skilledin.careerin.dao.UserDao;
import ai.skilledin.careerin.dao.models.Authorities;
import ai.skilledin.careerin.dao.models.PredictionPOJO;
import ai.skilledin.careerin.dao.models.PredictionResponseWrapper;
import ai.skilledin.careerin.dao.models.TrainingAnswers;
import ai.skilledin.careerin.dao.models.User;

@RestController
public class RestControllerApi {
	private static final Logger logger = LoggerFactory.getLogger(RestControllerApi.class);

	@Autowired
	private UserDao userDao;

	@Autowired
	private AuthoritiesDao roleDao;

	@Autowired
	private XGBoostUtils autoML;

	@Autowired
	private RoleModelDao roleModelDao;

	@PostMapping("/api/register")
	public Response register(@RequestBody User user) {
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
	public TrainingAnswersDao trainingAnswersDao;

	@PostMapping("/api/predict")
	public PredictionResponseWrapper predict(@RequestBody PredictionPOJO roleModel, HttpSession session, Model m) {
		// get ScoreCard of Results
		TreeMap<Double, String> roleIdFromPredictionModel = autoML.getRoleIdFromPredictionModel(roleModel);

		String roleId = roleIdFromPredictionModel.firstEntry().getValue();

		// adding roleId to session
		session.setAttribute("roleId", roleId);

		// get role name from database
		String roleName = autoML.getRoleNameFromRoleId(roleId);
		session.setAttribute("roleName", roleName);
		logger.info("prediction --> " + roleName);

		Runnable r1 = new Runnable() {

			@Override
			public void run() {
				roleModelDao.save(roleModel);

			}
		};
		new Thread(r1).start();

		logger.info("saved ->" + roleModel);
		PredictionResponseWrapper makePredictionWrapper = autoML.makePredictionWrapper(roleIdFromPredictionModel);
		logger.info(makePredictionWrapper.toString());
		session.setAttribute("prediction", makePredictionWrapper);

		return makePredictionWrapper;

	}

	@GetMapping("/api/fillData")
	public List<TrainingAnswers> fillData() {
		return trainingAnswersDao.findAll();

	}

	@GetMapping(value = "/api/username")
	public String currentUserName(Authentication authentication) {
		return authentication.getName();
	}
}
