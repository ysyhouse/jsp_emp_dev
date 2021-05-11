<%@page import="jspexp.b01_database.A01_EmpDao_Mysql"%>
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
				<th>월급검색(숫자이상)</th>
				<td><input type="text" name="sal" value="${param.sal}" /></td>
			</tr>
			<!-- <tr><th>직업검색</th><td><input type="text" name="job" value="${param.job}"/></td></tr> -->
			<tr>
				<td><input type="submit" name="submit" /></td>
			</tr>

		</table>
	</form>
	<%	 
	int sal=0;
	if(request.getParameter("sal") !=null){
		
	
		sal =Integer.parseInt(request.getParameter("sal"));
	}
	A01_EmpDao_Mysql dao = new A01_EmpDao_Mysql();
	// 검색된 내용을 매개변수로 전달..
	ArrayList<Emp> emplist = dao.empList(sal);
%>
	<table>

		<col width="30%">
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>직책</th>
			<th>번호</th>
			<th>급여</th>
			<th>보너스</th>
			<th>부서코드</th>
		</tr>

		<%for(Emp e:emplist){%>
		<tr>
			<td><%=e.getEmpno()%></td>
			<td><%=e.getEname()%></td>
			<td><%=e.getJob()%></td>
			<td><%=e.getMgr()%></td>
			<td><%=e.getSal()%></td>
			<td><%=e.getComm()%></td>
			<td><%=e.getDeptno()%></td>
		</tr>
		<%} %>

	</table>
</body>
</html>