package ai.skilledin.careerin.dao.functions;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;

import ai.skilledin.careerin.dao.SubjectDao;
import ai.skilledin.careerin.models.Subject;

public class SubjectFunctions {
	private static final Logger logger = LoggerFactory.getLogger(SubjectFunctions.class);

	@Autowired
	public SubjectDao subjectDao;

	@Bean
	public List<Subject> populateSubject() {
		logger.info("Subject List called");

		List<Subject> findAll = subjectDao.findAll();
		logger.info("Subject List " + findAll);

		return findAll;
	}
}
