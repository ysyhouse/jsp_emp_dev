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
<%-- 
ex) Person객체를 usebean을 이용해서scope = session 
으로 하여, 데이터를 할당한 후, 현재화면과 다음페이지에서 출력하세요.el을 통해서 추력처리
--%>
<body>
<h2 align="center"></h2>
<jsp:useBean id="m01" class="jspexp.z01_vo.Person" scope="session" />
<%-- Member m01 = new Member() --%>
<jsp:setProperty property="name" name="m01" value="홍길동"/>
<jsp:setProperty property="age" name="m01" value="30"/>
<jsp:setProperty property="loc" name="m01" value="서울 논현동"/>
<table>
	<col width="10%">
	<tr><th>이름</th><td><jsp:getProperty property="name" name="m01"/></td></tr>
	<tr><th>나이</th><td><%=m01.getAge() %></td></tr>
	<tr><th>장소</th><td>${m01.loc}</td></tr>
</table>
<table>
	<col width="10%">
	<tr><th>이름</th><td>${m01.name}</td></tr>
	<tr><th>나이</th><td>${m01.age}</td></tr>
	<tr><th>장소</th><td>${m01.loc}</td></tr>
</table>
</body>
</html>