package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.dao.models.Authorities;

public interface AuthoritiesDao extends JpaRepository<Authorities, String> {

}
