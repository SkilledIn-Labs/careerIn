package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.dao.models.Roles;

public interface RolesDao extends JpaRepository<Roles, String> {

}
