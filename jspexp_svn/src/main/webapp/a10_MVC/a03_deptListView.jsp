<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,jspexp.z01_vo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/a00_com.css">
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
	<form action="" method="post">
		<table>
			<col width="10%">
			<tr>
				<th>부서명 검색:</th>
				<td><input type="text" name="dname" value="${param.dname}" /></td>
			</tr>
			<tr>
				<th>부서위치 검색:</th>
				<td><input type="text" name="loc" value="${param.loc}" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" /></td>
			</tr>

		</table>
	</form>

	<table>

		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>
		<c:forEach var="dept" items="${dlist}">

			<tr>
				<td>${dept.deptno }</td>
				<td>${dept.deptname }</td>
				<td>${dept.loc }</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>