package com.happnic.bagunic.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;

@WebServlet("/getimg")
public class getimg extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String folderTypePath = "C:\\Users\\smhrd\\projectimg";
	        String name = new String();
	        String fileName = new String();
	        PrintWriter out = response.getWriter();
	        
	        int sizeLimit = 5 * 1024 * 1024; // 5메가까지 제한 넘어서면 예외발생
	        try {
	            MultipartRequest multi = new MultipartRequest(request, folderTypePath, sizeLimit,
	                    new DefaultFileRenamePolicy());
	            Enumeration files = multi.getFileNames();
	            //파일 정보가 있다면
	            if (files.hasMoreElements()) {
	                name = (String) files.nextElement();
	                fileName = multi.getFilesystemName(name);
	            }
	            System.out.println("이미지를 저장하였습니다. : " + fileName);
	        } catch (IOException e) {
	            out.println("안드로이드로부터 이미지를 받아옵니다.");
	        }
	}

}
