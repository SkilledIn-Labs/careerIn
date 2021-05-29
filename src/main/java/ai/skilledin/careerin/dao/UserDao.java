package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.models.RegisterUser;

public interface UserDao extends JpaRepository<RegisterUser, String> {

}
