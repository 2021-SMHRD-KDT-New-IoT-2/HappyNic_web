package com.happnic.bagunic.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happnic.bagunic.DAO.AppchatDAO;

@WebServlet("/ChatInputService")
public class ChatInputService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String chat = request.getParameter("content");
		AppchatDAO dao = new AppchatDAO();
		int cnt = dao.ChatInput(email,chat);
		
		if(cnt>0) {
			System.out.println(email+" 채팅 저장 성공");
			out.write("채팅 전송 성공");
		}else {
			System.out.println(email+" 채팅 저장 실패");
			out.write("채팅 전송 실패");
		}
	}
}
