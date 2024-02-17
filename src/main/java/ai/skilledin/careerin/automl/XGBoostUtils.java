package ai.skilledin.careerin.automl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Collections;
import java.util.TreeMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import ai.skilledin.careerin.dao.RolesDao;
import ai.skilledin.careerin.dao.models.PredictionPOJO;
import ai.skilledin.careerin.dao.models.PredictionResponseWrapper;
import ai.skilledin.careerin.dao.models.Roles;
import hex.genmodel.MojoModel;
import hex.genmodel.easy.EasyPredictModelWrapper;
import hex.genmodel.easy.RowData;
import hex.genmodel.easy.prediction.MultinomialModelPrediction;

import javax.annotation.PostConstruct;

@Component
public class XGBoostUtils {
	private static final Logger logger = LoggerFactory.getLogger(XGBoostUtils.class);
	@Autowired
	private RolesDao rolesDao;

	@Autowired(required = false)
	EasyPredictModelWrapper model;
	private final String URL = "https://drive.google.com/uc?export=download&id=13rXMshrQmuU3I9tBsrU8ff6FpcMbQaI_";


	@PostConstruct
	void init() {
		String moelLocation = "/tmp/final_model.zip";

		try {
			model = new EasyPredictModelWrapper(MojoModel.load(moelLocation));
			logger.info("successfully loaded the AI Model");
		} catch (IOException e) {
			// Path to the tmp folder in C drive
			String tmpFolderPath = "/tmp";

			// Create a File object for the tmp folder
			File tmpFolder = new File(tmpFolderPath);

			// Check if the tmp folder exists
			if (!tmpFolder.exists()) {
				// If it doesn't exist, create the tmp folder
				boolean created = tmpFolder.mkdir();

				if (created) {
					logger.info("tmp folder created successfully.");
				} else {
					logger.error("Failed to create tmp folder.");
				}
			} else {
				logger.info("tmp folder already exists.");
			}
			try (BufferedInputStream in = new BufferedInputStream(new URL(URL).openStream());
					FileOutputStream fileOutputStream = new FileOutputStream(moelLocation)) {
				byte[] dataBuffer = new byte[1024];
				int bytesRead;
				while ((bytesRead = in.read(dataBuffer, 0, 1024)) != -1) {
					fileOutputStream.write(dataBuffer, 0, bytesRead);
				}
				fileOutputStream.close();
				model = new EasyPredictModelWrapper(MojoModel.load(moelLocation));
				logger.info("Successfully downloaded Model");
			} catch (IOException ie) {
				logger.error("unable to locate model");
				ie.printStackTrace();
			}
		}

	}

	public String getRoleNameFromRoleId(String role_id) {
		Roles byId = rolesDao.getById(role_id);
		logger.debug("RoleID : " + role_id + " : " + byId.getRole_name());
		return byId.getRole_name();
	}

	public TreeMap<Double, String> getRoleIdFromPredictionModel(PredictionPOJO role) {

		TreeMap<Double, String> prediction = new TreeMap<>(Collections.reverseOrder());

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
			row.put("q15", role.getQ15().toString());
			row.put("q16", role.getQ16().toString());
			row.put("q17", role.getQ17().toString());
			row.put("q18", role.getQ18().toString());
			row.put("q19", role.getQ19().toString());
			row.put("q20", role.getQ20().toString());
			row.put("q21", role.getQ21().toString());
			row.put("q22", role.getQ22().toString());
			row.put("q23", role.getQ23().toString());
			row.put("q24", role.getQ24().toString());
			row.put("q25", role.getQ25().toString());
			row.put("q26", role.getQ26().toString());
			row.put("q27", role.getQ27().toString());
			row.put("q28", role.getQ28().toString());
			row.put("q29", role.getQ29().toString());
			row.put("q30", role.getQ30().toString());
			row.put("q31", role.getQ31().toString());
			row.put("q32", role.getQ32().toString());
			row.put("q33", role.getQ33().toString());
			row.put("q34", role.getQ34().toString());
			row.put("q35", role.getQ35().toString());
			row.put("q36", role.getQ36().toString());
			row.put("q37", role.getQ37().toString());
			row.put("q38", role.getQ38().toString());

			p = model.predictMultinomial(row);

			String predictionLabel = p.label;
			role.setRole_id(predictionLabel);

			String[] contributionNames = model.getResponseDomainValues();
			double[] classProbabilities = p.classProbabilities;
			logger.info(model.getResponseDomainValues().length + "    :    " + classProbabilities.length);

			int i = -1;
			while (++i < classProbabilities.length) {
				if (contributionNames[i].toCharArray()[0] == 'r')
					prediction.put(classProbabilities[i], contributionNames[i]);
			}

//			for (int i = 0; i < p.classProbabilities.length; i++)
//				System.out.println(model.getResponseDomainValues()[i] + ": " + p.classProbabilities[i]);

			logger.info(prediction.toString());
		} catch (Exception e) {
			logger.error("error predicting for the data given");
			e.printStackTrace();
		}
		return prediction;
	}

	public PredictionResponseWrapper makePredictionWrapper(TreeMap<Double, String> roleIdFromPredictionModel) {
		PredictionResponseWrapper wrapper = new PredictionResponseWrapper();

		for (Double value : roleIdFromPredictionModel.keySet()) {
			String roleId = roleIdFromPredictionModel.get(value);
			wrapper.getRoleName().add(rolesDao.findById(roleId).get());
			wrapper.getValues().add(value);
		}

		return wrapper;

	}
}
