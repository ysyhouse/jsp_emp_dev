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
ex) Person 객체를 useBean 을 이용해서 scope=session으로 하여,
데이터를 할당 한 후, 현재화면과 다음페이지에서 el로 출력하세요


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
<jsp:useBean id="pe01" class="jspexp.z01_vo.Person" scope="session"/>
<jsp:setProperty property="name" name="pe01" value="홍길동" />
<jsp:setProperty property="age" name="pe01" value="25" />
<jsp:setProperty property="loc" name="pe01" value="서울강남" />
<%-- 
el방식
<table>
	<col width="20%">
	<tr><th>이름</th><td>${pe01.name }</td></tr>
	<tr><th>나이</th><td>${pe01.age }</td></tr>
	<tr><th>거주지</th><td>${pe01.loc }</td></tr>
	
</table> --%>

<table>
	<col width="20%">
	<tr><th>이름</th><td>${pe01.name }</td></tr>
	<tr><th>나이</th><td>${pe01.age }</td></tr>
	<tr><th>거주지</th><td>${pe01.loc }</td></tr>
	
</table>

<a href="0418_03_1.jsp" >다음 페이지 이동</a>
</body>
</html>