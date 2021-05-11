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
		$("h2").text("form 요청값 처리.");
	});
</script>
</head>
<%--
1. 요청값 처리.
	페이지?요청key=요청값value
	<input name="요청key" value="요청값value"/>
	request.getParameter("요청key");

 --%>
<body>
<h2 align="center"></h2>
<form>
<table>
	<col width="20%">
	<tr><th>숫자1</th><td><input type="text" name="num01"/></td></tr>
	<tr><th>숫자2</th><td><input type="text" name="num02"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="연산"/></td></tr>
</table>
</form>
<%-- request.getParameter("num01") == ${param.num01} 동일 처리. 
form 하위에 객체들은 name을 key로 하고 입력값을 value로 하여 submit버튼을 클릭하는
순간 아래같이 요청값을 query string으로 전송한다.
a06_formRequest.jsp?num01=25&num02=30
--%>
<h3 align="center">
	${param.num01} + ${param.num02} = ${param.num01+param.num02}
</h3>
</body>
</html>