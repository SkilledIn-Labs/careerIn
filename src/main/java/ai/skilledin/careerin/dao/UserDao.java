package ai.skilledin.careerin.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import ai.skilledin.careerin.dao.models.User;

public interface UserDao extends JpaRepository<User, String> {

}
