package ai.skilledin.careerin.dao.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "training_answers", schema = "public")
public class TrainingAnswers {
	@Id
	private Integer id;
	private String question;
	private String qid;
	private String answers;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQid() {
		return qid;
	}

	public void setQid(String qid) {
		this.qid = qid;
	}

	public String getAnswers() {
		return answers;
	}

	public void setAnswers(String answers) {
		this.answers = answers;
	}

	@Override
	public String toString() {
		return "TrainingAnswers [id=" + id + ", question=" + question + ", qid=" + qid + ", answers=" + answers + "]";
	}

}
