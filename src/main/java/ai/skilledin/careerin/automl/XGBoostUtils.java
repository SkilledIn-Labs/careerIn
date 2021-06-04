package ai.skilledin.careerin.automl;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ai.skilledin.careerin.dao.RolesDao;
import ai.skilledin.careerin.dao.models.PredictionPOJO;
import ai.skilledin.careerin.dao.models.Roles;
import hex.genmodel.MojoModel;
import hex.genmodel.easy.EasyPredictModelWrapper;
import hex.genmodel.easy.RowData;
import hex.genmodel.easy.prediction.MultinomialModelPrediction;

@Component
public class XGBoostUtils {
	private static final Logger logger = LoggerFactory.getLogger(XGBoostUtils.class);

	@Autowired(required = false)
	EasyPredictModelWrapper model;

	public XGBoostUtils() {
		super();
		String moelLocation = "/home/raj/ai-models/xgboost_dadee8ad_2654_4fb1_864f_c2a55c9b510c_XG_ROLE_ID.zip";

		try {
			model = new EasyPredictModelWrapper(MojoModel.load(moelLocation));
			logger.info("successfully loaded the AI Model");
		} catch (IOException e) {
			logger.error("Error while loading AI Model");
			e.printStackTrace();
		}

	}

	@Autowired
	private RolesDao rolesDao;

	public String getRoleNameFromRoleId(String role_id) {
		Roles byId = rolesDao.getById(role_id);
		logger.info("RoleID:" + byId.getRole_name());
		return byId.getRole_name();
	}

	public String getRoleIdFromPredictionModel(PredictionPOJO role) {
		String roleId = "Predictiong";
		try {

			MultinomialModelPrediction p;
			RowData row = new RowData();
			row.put("q1", role.getQ1().toString());
			row.put("q2", role.getQ2().toString());
			row.put("q3", role.getQ3().toString());
			row.put("q4", role.getQ4().toString());
			row.put("q5", role.getQ5().toString());
			row.put("q6", role.getQ6().toString());
			row.put("q7", role.getQ7().toString());
			row.put("q8", role.getQ8().toString());
			row.put("q9", role.getQ9().toString());
			row.put("q10", role.getQ10().toString());
			row.put("q11", role.getQ11().toString());
			row.put("q12", role.getQ12().toString());
			row.put("q13", role.getQ13().toString());
			row.put("q14", role.getQ14().toString());
			row.put("q15", role.getQ15());
			row.put("q16", role.getQ16());
			row.put("q17", role.getQ17());
			row.put("q18", role.getQ18());
			row.put("q19", role.getQ19());
			row.put("q20", role.getQ20());
			row.put("q21", role.getQ21());
			row.put("q22", role.getQ22());
			row.put("q23", role.getQ23());
			row.put("q24", role.getQ24());
			row.put("q25", role.getQ25());
			row.put("q26", role.getQ26());
			row.put("q27", role.getQ27());
			row.put("q28", role.getQ28());
			row.put("q29", role.getQ29());
			row.put("q30", role.getQ30());
			row.put("q31", role.getQ31());
			row.put("q32", role.getQ32());
			row.put("q33", role.getQ33());
			row.put("q34", role.getQ34());
			row.put("q35", role.getQ35());
			row.put("q36", role.getQ36());
			row.put("q37", role.getQ37());
			row.put("q38", role.getQ38());

			p = model.predictMultinomial(row);
			String prediction = p.label;
			role.setRole_id(prediction);
			roleId = p.label;
		} catch (Exception e) {
			roleId = "error Occured";
			System.err.println("error predicting for the data given");
			e.printStackTrace();
		}
		return roleId;
	}
}
