package ai.skilledin.careerin.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import ai.skilledin.careerin.dao.models.TrainingAnswers;

public interface TrainingAnswersDao extends JpaRepository<TrainingAnswers, Integer> {
	@Query(value = "SELECT * FROM training_answers WHERE qid = ?1", nativeQuery = true)
	List<TrainingAnswers> getListByQid(String qid);

}
