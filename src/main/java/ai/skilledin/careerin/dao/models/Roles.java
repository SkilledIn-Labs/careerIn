package ai.skilledin.careerin.dao.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "roles", schema = "public")
public class Roles {
	@Id
	private String rid;
	private String role_name;
	private String shortName;
	private String img;

	public String getRid() {
		return rid;
	}

	public void setRid(String rid) {
		this.rid = rid;
	}

	public String getRole_name() {
		return role_name;
	}

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	public String getShortName() {
		return shortName;
	}

	public void setShortName(String shortName) {
		this.shortName = shortName;
	}

	@Override
	public String toString() {
		return "Roles [rid=" + rid + ", role_name=" + role_name + ", shortName=" + shortName + "]";
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
