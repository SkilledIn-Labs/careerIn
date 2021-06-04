package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.dao.models.PredictionPOJO;

public interface RoleModelDao extends JpaRepository<PredictionPOJO, Integer> {

}
