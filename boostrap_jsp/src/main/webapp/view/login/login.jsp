<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="util.Cookies"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	if (id.equals(password)) {
		// ID와 패스워드가 같으면 로그인 성공으로 판단
		session.setAttribute("MEMBERID", id);
		response.sendRedirect("../main/index.jsp");
	} else { // 로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>
