package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.models.Subject;

public interface SubjectDao extends JpaRepository<Subject, Integer> {

}
