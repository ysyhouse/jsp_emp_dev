<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("시작");
	});
</script>
</head>
<%--Person 객체를 userBean을 이용하여 스코프를 세션으로 하고 ,데이터를 할당한 후 현재화면과 다음페이지에서 출력하세요.el활용 --%>
<body>
<h2 align="center"></h2>
<jsp:useBean id="person" class="team.a6_ysy.z01_vo.Person" scope="session"/>
<jsp:setProperty property="name" name="person" value="sunyoung"/>
<jsp:setProperty property="age" name="person" value="1"/>
<jsp:setProperty property="loc" name="person" value="seoul"/>
<table>
	<col width="20%">
	<tr><th>이름 :</th><h3>${person.name }</h3></tr>
	<tr><th>나이 :</th><h3>${person.age }</h3></tr>
	<tr><th>지역 :</th><h3>${person.loc }</h3></tr>
	
	
</table>
</body>
</html>