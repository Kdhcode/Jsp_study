package ch07.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/fileuploadProcess")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1,  // 1MB
    maxFileSize = 1024 * 1024 * 10,       // 10MB
    maxRequestSize = 1024 * 1024 * 50     // 50MB
)
public class FileuploadProcessServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        String uploadPath = "D:/upload";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        String name = request.getParameter("name");
        String subject = request.getParameter("subject");

        out.println("<p>이름: " + name + "</p>");
        out.println("<p>제목: " + subject + "</p>");

        int fileCount = 1;
        Collection<Part> fileParts = request.getParts();
        for (Part part : fileParts) {
			if (part.getName().startsWith("fileupload")) {
				String fileName = part.getSubmittedFileName(); 
				
				if (fileName == null || fileName.isEmpty()) continue; 
				
				part.write(uploadPath + File.separator + fileName); 
				out.println("업로드된 파일 " + fileCount + ": " + fileName + "<br>");
				fileCount++;
			}
		}
		

        out.println("<p>저장 경로: " + uploadPath + "</p>");
        out.println("<h3>업로드 완료!</h3>");
    }
}
