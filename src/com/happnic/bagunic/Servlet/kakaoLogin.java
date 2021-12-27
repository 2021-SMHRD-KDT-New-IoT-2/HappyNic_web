package com.happnic.bagunic.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happnic.bagunic.DAO.UserDAO;


@WebServlet("/kakaoLogin")
public class kakaoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");

		UserDAO dao = new UserDAO();
		
		System.out.println("īī�� �α��� : "+"("+name+")"+email);
		
		if(dao.emailCheck(email)) {
			dao.kakaoJoin(email,name);
			out.write("email");
			System.out.println(email + ": kakao join");
		}
		out.write("email");
		System.out.println(email + ": kakao login success");
	}

}