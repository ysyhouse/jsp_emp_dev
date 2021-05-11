<%@page import="jspexp.b01_database.A01_EmpDao"%>
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
				<th>이름검색</th>
				<td><input type="text" name="ename" value="${param.ename}" /></td>
			</tr>
			<tr>
				<th>직업검색</th>
				<td><input type="text" name="job" value="${param.job}" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" /></td>
			</tr>

		</table>
	</form>
	<%--
	//String ename = request.getParameter("ename");
	//String job = request.getParameter("job");
	//A01_EmpDao dao = new A01_EmpDao();
	// 검색된 내용을 매개변수로 전달..
	//ArrayList<Emp> empList = dao.empList(ename, job);
--%>
	<table>

		<tr>
			<th>번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
			<th>번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>


		<c:forEach var="e" items="${emplist}">
			<!--  emp.add(new Emp(rs.getInt("empno"),rs.getString("ename"),rs.getString("job"),rs.getInt("mgr"),rs.getDate("hiredate"),
						 rs.getDouble("sal"),rs.getDouble("comm"),rs.getInt("deptno"))); -->
			<tr>
				<td>${e.empno}</td>
				<td>${e.ename}</td>
				<td>${e.job}</td>
				<td>${e.mgr}</td>
				<td>${e.hiredate}</td>
				<td>${e.sal}</td>
				<td>${e.comm}</td>
				<td>${e.deptno}</td>

			</tr>
		</c:forEach>

	</table>
</body>
</html>