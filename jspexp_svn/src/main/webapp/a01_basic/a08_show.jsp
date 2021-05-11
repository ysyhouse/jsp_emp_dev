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

<body>
<h2 align="center"></h2>
<table>
	<col width="20%">
	<tr><th>아이디</th><td>${m01.id}</td></tr>
	<tr><th>이름</th><td>${m01.name}</td></tr>
	<tr><th>권한</th><td>${m01.auth}</td></tr>
</table>
<jsp:useBean id="mem" class="jspexp.z01_vo.Member"/>
<jsp:setProperty property="*" name="mem"/>
<%--
?id=zelratole&name=홍길동&auth=관리자
Member 선언된 클래스에
setId(String s) 가 있고, property="*" 로 선언했기에, 요청에 해당하는 메서드가 
setName(String s) 가 있고, 있으면 자동으로 할당이 된다.
setAuth(String s) 가 있고,
 --%>
<h3>요청값을 받은 데이터</h3> 
 <table>
	<col width="20%">
	<tr><th>아이디</th><td>${mem.id}</td></tr>
	<tr><th>이름</th><td>${mem.name}</td></tr>
	<tr><th>권한</th><td>${mem.auth}</td></tr>
</table>



</body>
</html>