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
		//���� �Ϸ� ������.
		String email = request.getParameter("email");
		String basket_type = request.getParameter("basket_type");
		String park_area = request.getParameter("park_area");
		
		System.out.println(email +"�� "+park_area+" : "+basket_type + "");
		//���� �Ϸ� ���� ���
		out.print("<html><head><title>Bagunic ���� �Ϸ�</title></head>");
		out.print("<body>");
		out.print("<h1>������ �����Ͽ����ϴ�.</h1>");
		out.println("</body></html>");
		out.close();
		
		//����ڰ� ��û�� ����� �ٱ��� �� 1���� �ٱ��� �ڵ带 ����ڿ��� ����
		
	}
}
