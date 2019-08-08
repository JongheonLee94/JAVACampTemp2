package test;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@SuppressWarnings("serial")
public class TestController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SavePath = "C:\\jps_image\\";
		
		String serial = "10101";
		
		MultipartRequest mpr = null;
		try {
			mpr = new MultipartRequest(request, SavePath, 1024 * 1024 * 200, "utf-8",
					new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String fileName = mpr.getFilesystemName("file");
		String[] pathpart = fileName.split("\\.");
		
		File oldFile = new File(SavePath+fileName);
		File newFile = new File(SavePath+serial+"\\."+pathpart[1]);
		
		oldFile.renameTo(newFile);
		
	}
	
}
