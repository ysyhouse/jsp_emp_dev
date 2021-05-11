<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


String reg_member = request.getParameter("reg_member");



if ( reg_member.equals("himan")) {

%>

<h2><%=reg_member%>님은 등록된 회원입니다.</h2>

<%
} else {
%>
<h2><%=reg_member%>님은 등록 가능한 아이디입니다.</h2>
<%
}
%>
</body>
</html>