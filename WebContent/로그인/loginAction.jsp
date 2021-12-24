<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%><!-- 자바 클래스 사용 -->
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	
	
		if (id.equals("HSJ")&& pw.equals("1234")){
			HttpSession session1 = request.getSession();
			session.setAttribute("id",id);
			response.sendRedirect("관리자페이지.jsp");
		} else {


		}
	%>

</body>
</html>