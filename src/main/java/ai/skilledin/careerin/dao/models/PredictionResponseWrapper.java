package ai.skilledin.careerin.dao.models;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

public class PredictionResponseWrapper {
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	private List<Roles> roleName;
	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	private List<Double> values;

	public PredictionResponseWrapper() {
		super();
		roleName = new ArrayList<Roles>();
		values = new ArrayList<Double>();

	}

	public List<Roles> getRoleName() {
		return roleName;
	}

	public void setRoleName(List<Roles> roleName) {
		this.roleName = roleName;
	}

	public List<Double> getValues() {
		return values;
	}

	public void setValues(List<Double> values) {
		this.values = values;
	}

	@Override
	public String toString() {
		return "PredictionResponseWrapper [roleName=" + roleName + ", values=" + values + "]";
	}

}
