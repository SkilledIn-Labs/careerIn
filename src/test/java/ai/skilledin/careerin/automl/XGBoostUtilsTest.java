package ai.skilledin.careerin.automl;

import java.util.List;
import java.util.Map;

public class XGBoostUtilsTest {

	public static void main(String[] args) {
		try {
			String[] qids = { "q30" };

			for (String string : qids) {
				DB db = new DB();
				String qid = string;
				String questionNameSql = "select question from questions where qid='" + qid + "';";

				System.err.println("running --> " + questionNameSql);
				String questionName = db.func(questionNameSql).get(0).get("question");

				String distinctAnswers = "select distinct rd." + qid + " from role_data rd;";
				System.err.println("running --> " + distinctAnswers);
				List<Map<String, String>> questions = db.func(distinctAnswers);

				for (Map<String, String> map : questions) {
					String sql = "INSERT INTO public.training_answers (question, qid, answers) VALUES('" + questionName
							+ "', '" + qid + "', '" + map.get(qid) + "');";
					db.func(sql);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
