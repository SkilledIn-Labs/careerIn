package ai.skilledin.careerin.automl;

public class Test {
	public static void main(String[] args) {
		for (int i = 1; i <= 38; i++) {
			String string = "row.put(\"q" + i + "\", role.getQ" + i + "());";
			System.out.println(string);
		}
	}
}
