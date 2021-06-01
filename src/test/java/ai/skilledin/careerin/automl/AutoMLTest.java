package ai.skilledin.careerin.automl;

import java.util.List;
import java.util.Map;

import hex.genmodel.MojoModel;
import hex.genmodel.easy.EasyPredictModelWrapper;
import hex.genmodel.easy.RowData;
import hex.genmodel.easy.prediction.MultinomialModelPrediction;

public class AutoMLTest {

	public static void main(String[] args) {
		try {
			EasyPredictModelWrapper model = new EasyPredictModelWrapper(MojoModel.load(
					"C:\\Users\\raj00\\Documents\\Utkarsh\\automl\\role\\xgboost_dadee8ad_2654_4fb1_864f_c2a55c9b510c_XG_ROLE_ID.zip"));

			RowData row = new RowData();

			DB db = new DB();

			String qQuery = "select * from questions;";
			List<Map<String, String>> questions = db.func(qQuery);

			String vQUery = "select * from role_data limit 3";

			List<Map<String, String>> values = db.func(vQUery);
			Map<String, String> vData = values.get(2);
			for (Map<String, String> map : questions) {
				String qid = map.get("qid");
				String question = map.get("question");
				String value = vData.get(qid);
				System.err.println(question + ":" + value);
				row.put(qid, value);
			}

			MultinomialModelPrediction p;

			p = model.predictMultinomial(row);

			System.out.println("Has penetrated the prostatic capsule: " + p.label);

			System.out.print("Class probabilities: ");
			for (int i = 0; i < p.classProbabilities.length; i++) {
				if (i > 0) {
					System.out.print(",");
				}
				System.out.print(p.classProbabilities[i]);
			}
			System.out.println("");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
