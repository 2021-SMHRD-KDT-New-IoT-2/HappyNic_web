package com.happnic.bagunic.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/kakaoCash_success")
public class kakaoCash_success extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//결제 완료 페이지.
		String email = request.getParameter("email");
		String basket_type = request.getParameter("basket_type");
		String park_area = request.getParameter("park_area");
		
		System.out.println(email +"님 "+park_area+" : "+basket_type + "");
		//결제 완료 문구 출력
		out.print("<html><head><title>Bagunic 결제 완료</title></head>");
		out.print("<body>");
		out.print("<h1>결제가 성공하였습니다.</h1>");
		out.println("</body></html>");
		out.close();
		
		//사용자가 요청한 장소의 바구니 중 1개의 바구니 코드를 사용자에게 전달
		
	}
}
