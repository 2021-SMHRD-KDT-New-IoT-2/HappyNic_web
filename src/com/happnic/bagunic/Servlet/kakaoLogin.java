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
		
		System.out.println("카카오 로그인 : "+"("+name+")"+email);
		
		//카카오로 첫 로그인시 아이디가 있는 지 확인 -> email넘겨주도록 수정(String?gson)
		if(dao.emailCheck(email)) {
			dao.kakaoJoin(email,name);
			out.write("email");
		}
		out.write("카카오 로그인 완료");
	}

}