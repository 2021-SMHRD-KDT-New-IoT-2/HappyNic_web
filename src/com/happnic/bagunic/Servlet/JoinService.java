package com.happnic.bagunic.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happnic.bagunic.DAO.UserDAO;
import com.happnic.bagunic.VO.UserVO;


@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		
		UserDAO dao = new UserDAO();		
		
		int cnt = dao.join(email, pw, name, phone);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			out.write("회원 가입 성공");
		}else {
			System.out.println("회원가입 실패");
			out.write("회원 가입 실패");
		}
	}

}
