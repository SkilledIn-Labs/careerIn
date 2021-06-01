package ai.skilledin.careerin.automl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DB {
	// JDBC driver name and database URL
	static final String JDBC_DRIVER = "org.postgresql.Driver";
	static final String DB_URL = "jdbc:postgresql://skilledin.postgres.database.azure.com:5432/skilledin";

	// Database credentials
	static final String USER = "raj@skilledin";
	static final String PASS = "abcXYZ@00114";

	public static void main(String[] args) {
		DB db = new DB();

		String query = "select * from questions;";

		List<Map<String, String>> colData = db.func(query);
		for (Map<String, String> map : colData) {
			String currColname = map.get("question").trim();
			String newColname = map.get("qid").trim();
			String renameQuery = "ALTER TABLE role_data RENAME \"" + currColname + "\" TO \"" + newColname + "\" ;";
			System.err.println(db.func(renameQuery));
		}

		System.err.println();
	}

	public List<Map<String, String>> func(String query) {
		List<Map<String, String>> data = new ArrayList<Map<String, String>>();

		try {

			Class.forName(JDBC_DRIVER);
			Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			ResultSetMetaData rsmd = rs.getMetaData();
			List<String> columns = new ArrayList<String>(rsmd.getColumnCount());
			for (int i = 1; i <= rsmd.getColumnCount(); i++) {
				columns.add(rsmd.getColumnName(i));
			}
			while (rs.next()) {
				Map<String, String> row = new HashMap<String, String>(columns.size());
				for (String col : columns) {
					row.put(col, rs.getString(col));
				}
				data.add(row);
			}

			System.out.println(data);
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return data;
	}

}