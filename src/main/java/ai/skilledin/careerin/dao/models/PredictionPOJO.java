package ai.skilledin.careerin.dao.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "role_model_predictions", schema = "public")
public class PredictionPOJO {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "role_model_prediction_seq")
	@SequenceGenerator(name = "role_model_prediction_seq", sequenceName = "role_model_prediction_seq", allocationSize = 1)
	@Column(name = "id")
	private Integer Id;
	private String email = "oAuth";
	private Integer q1;
	private Integer q2;
	private Integer q3;
	private Integer q4;
	private Integer q5;
	private Integer q6;
	private Integer q7;
	private Integer q8;
	private Integer q9;
	private Integer q10;
	private Integer q11;
	private Integer q12;
	private Integer q13;
	private Integer q14;
	private String q15;
	private String q16;
	private String q17;
	private String q18;
	private String q19;
	private String q20;
	private String q21;
	private String q22;
	private String q23;
	private String q24;
	private String q25;
	private String q26;
	private String q27;
	private String q28;
	private String q29;
	private String q30;
	private String q31;
	private String q32;
	private String q33;
	private String q34;
	private String q35;
	private String q36;
	private String q37;
	private String q38;
	private String role_id;

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public Integer getQ1() {
		return q1;
	}

	public void setQ1(Integer q1) {
		this.q1 = q1;
	}

	public Integer getQ2() {
		return q2;
	}

	public void setQ2(Integer q2) {
		this.q2 = q2;
	}

	public Integer getQ3() {
		return q3;
	}

	public void setQ3(Integer q3) {
		this.q3 = q3;
	}

	public Integer getQ4() {
		return q4;
	}

	public void setQ4(Integer q4) {
		this.q4 = q4;
	}

	public Integer getQ5() {
		return q5;
	}

	public void setQ5(Integer q5) {
		this.q5 = q5;
	}

	public Integer getQ6() {
		return q6;
	}

	public void setQ6(Integer q6) {
		this.q6 = q6;
	}

	public Integer getQ7() {
		return q7;
	}

	public void setQ7(Integer q7) {
		this.q7 = q7;
	}

	public Integer getQ8() {
		return q8;
	}

	public void setQ8(Integer q8) {
		this.q8 = q8;
	}

	public Integer getQ9() {
		return q9;
	}

	public void setQ9(Integer q9) {
		this.q9 = q9;
	}

	public Integer getQ10() {
		return q10;
	}

	public void setQ10(Integer q10) {
		this.q10 = q10;
	}

	public Integer getQ11() {
		return q11;
	}

	public void setQ11(Integer q11) {
		this.q11 = q11;
	}

	public Integer getQ12() {
		return q12;
	}

	public void setQ12(Integer q12) {
		this.q12 = q12;
	}

	public Integer getQ13() {
		return q13;
	}

	public void setQ13(Integer q13) {
		this.q13 = q13;
	}

	public Integer getQ14() {
		return q14;
	}

	public void setQ14(Integer q14) {
		this.q14 = q14;
	}

	public String getQ15() {
		return q15;
	}

	public void setQ15(String q15) {
		this.q15 = q15;
	}

	public String getQ16() {
		return q16;
	}

	public void setQ16(String q16) {
		this.q16 = q16;
	}

	public String getQ17() {
		return q17;
	}

	public void setQ17(String q17) {
		this.q17 = q17;
	}

	public String getQ18() {
		return q18;
	}

	public void setQ18(String q18) {
		this.q18 = q18;
	}

	public String getQ19() {
		return q19;
	}

	public void setQ19(String q19) {
		this.q19 = q19;
	}

	public String getQ20() {
		return q20;
	}

	public void setQ20(String q20) {
		this.q20 = q20;
	}

	public String getQ21() {
		return q21;
	}

	public void setQ21(String q21) {
		this.q21 = q21;
	}

	public String getQ22() {
		return q22;
	}

	public void setQ22(String q22) {
		this.q22 = q22;
	}

	public String getQ23() {
		return q23;
	}

	public void setQ23(String q23) {
		this.q23 = q23;
	}

	public String getQ24() {
		return q24;
	}

	public void setQ24(String q24) {
		this.q24 = q24;
	}

	public String getQ25() {
		return q25;
	}

	public void setQ25(String q25) {
		this.q25 = q25;
	}

	public String getQ26() {
		return q26;
	}

	public void setQ26(String q26) {
		this.q26 = q26;
	}

	public String getQ27() {
		return q27;
	}

	public void setQ27(String q27) {
		this.q27 = q27;
	}

	public String getQ28() {
		return q28;
	}

	public void setQ28(String q28) {
		this.q28 = q28;
	}

	public String getQ29() {
		return q29;
	}

	public void setQ29(String q29) {
		this.q29 = q29;
	}

	public String getQ30() {
		return q30;
	}

	public void setQ30(String q30) {
		this.q30 = q30;
	}

	public String getQ31() {
		return q31;
	}

	public void setQ31(String q31) {
		this.q31 = q31;
	}

	public String getQ32() {
		return q32;
	}

	public void setQ32(String q32) {
		this.q32 = q32;
	}

	public String getQ33() {
		return q33;
	}

	public void setQ33(String q33) {
		this.q33 = q33;
	}

	public String getQ34() {
		return q34;
	}

	public void setQ34(String q34) {
		this.q34 = q34;
	}

	public String getQ35() {
		return q35;
	}

	public void setQ35(String q35) {
		this.q35 = q35;
	}

	public String getQ36() {
		return q36;
	}

	public void setQ36(String q36) {
		this.q36 = q36;
	}

	public String getQ37() {
		return q37;
	}

	public void setQ37(String q37) {
		this.q37 = q37;
	}

	public String getQ38() {
		return q38;
	}

	public void setQ38(String q38) {
		this.q38 = q38;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	@Override
	public String toString() {
		return "RoleModel [Id=" + Id + ", q1=" + q1 + ", q2=" + q2 + ", q3=" + q3 + ", q4=" + q4 + ", q5=" + q5
				+ ", q6=" + q6 + ", q7=" + q7 + ", q8=" + q8 + ", q9=" + q9 + ", q10=" + q10 + ", q11=" + q11 + ", q12="
				+ q12 + ", q13=" + q13 + ", q14=" + q14 + ", q15=" + q15 + ", q16=" + q16 + ", q17=" + q17 + ", q18="
				+ q18 + ", q19=" + q19 + ", q20=" + q20 + ", q21=" + q21 + ", q22=" + q22 + ", q23=" + q23 + ", q24="
				+ q24 + ", q25=" + q25 + ", q26=" + q26 + ", q27=" + q27 + ", q28=" + q28 + ", q29=" + q29 + ", q30="
				+ q30 + ", q31=" + q31 + ", q32=" + q32 + ", q33=" + q33 + ", q34=" + q34 + ", q35=" + q35 + ", q36="
				+ q36 + ", q37=" + q37 + ", q38=" + q38 + ", role_id=" + role_id + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
