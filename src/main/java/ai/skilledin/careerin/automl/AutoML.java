package ai.skilledin.careerin.automl;

import hex.genmodel.MojoModel;
import hex.genmodel.easy.EasyPredictModelWrapper;
import hex.genmodel.easy.RowData;
import hex.genmodel.easy.prediction.MultinomialModelPrediction;

public class AutoML {
	public static void main(String[] args) {
		try {
			String file = "C:\\Users\\raj00\\Documents\\Utkarsh\\automl\\role\\XGBoost_2_AutoML_20210531_091927_THIRD.zip";

			EasyPredictModelWrapper.Config config = new EasyPredictModelWrapper.Config().setModel(MojoModel.load(file));
			EasyPredictModelWrapper model = new EasyPredictModelWrapper(config);

			RowData row = new RowData();

			String ccc = "Acedamic percentage in Operating Systems,percentage in Algorithms,Percentage in Programming Concepts,Percentage in Software Engineering,Percentage in Computer Networks,Percentage in Electronics Subjects,Percentage in Computer Architecture,Percentage in Mathematics,Percentage in Communication skills,Hours working per day,Logical quotient rating,hackathons,coding skills rating,public speaking points,can work long time before system?,self-learning capability?,Extra-courses did,certifications,workshops,talenttests taken?,olympiads,reading and writing skills,memory capability score,Interested subjects,interested career area ,Job/Higher Studies?,Type of company want to settle in?,Taken inputs from seniors or elders,interested in games,Interested Type of Books,Salary Range Expected,In a Realtionship?,Gentle or Tuff behaviour?,Management or Technical,Salary/work,hard/smart worker,worked in teams ever?,Introvert";

			String[] colNames = ccc.split(",");

			String vvv = "93,77,69,79,90,93,73,63,77,6,3,2,3,3,no,no,yes,r programming,cloud computing,no,no,excellent,poor,parallel computing,security,job,BPA,no,no,Drama,Work,yes,gentle,Technical,salary,hard worker,yes,yes";

			String[] values = vvv.split(",");

			int j = 0;
			for (String string : colNames) {
				row.put(colNames[j], values[j]);
				j++;
			}

			MultinomialModelPrediction p = model.predictMultinomial(row);
			String[] colnames = model.m.getNames();
			String[] features = model.m.getOutputNames();
			System.out.println("Has penetrated the prostatic capsule (1=yes; 0=no): " + p.label);

			for (String string : features) {

				System.err.print(string + ", ");
			}
			System.err.println("");
			System.out.println("Class probabilities: ");
			for (int i = 0; i < p.classProbabilities.length; i++) {
				if (i > 0) {
					System.out.print(",   :  ");
				}
				System.out.print(features[i]);
				System.out.print(p.classProbabilities[i]);
			}
			System.out.println("");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
