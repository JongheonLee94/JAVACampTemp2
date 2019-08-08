package util;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;

public class Util {
	public static int parseInt(String base) {
		try {
			return (int) Integer.parseInt(base);
		} catch (Exception e) {
			return -1;
		}
	}

	public static String h(String base) {
		if (base == null || base.equals("")) {
			return base;
		}
		try {
			byte[] bs = base.getBytes("8859_1");
			base = new String(bs, "UTF-8");
		} catch (Exception e) {
		}

		return base;
	}

	public static Connection getConn() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XE", "HR", "HR");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static String uploadFile(String fileName, String serial) {
		String SavePath = "C:\\jps_image\\";
		
		String[] pathpart = fileName.split("\\.");
		
		File oldFile = new File(SavePath+fileName);
		File newFile = new File(SavePath+serial.trim()+"."+pathpart[pathpart.length-1]);
		
		oldFile.renameTo(newFile);

		return serial.trim()+"."+pathpart[pathpart.length-1];
	}
}
