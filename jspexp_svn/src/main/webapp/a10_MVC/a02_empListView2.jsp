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
	
	function openWin(empnum){
		window.open("empnoView.jsp?empno="+empnum ,"new","width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");
	}
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
				<td colspan="2"><input type="submit" value="검색" /></td>
			</tr>

		</table>
	</form>
	<%
	String ename = request.getParameter("ename");
	String job = request.getParameter("job");
	
	A01_EmpDao_Mysql dao = new A01_EmpDao_Mysql();
	// 검색된 내용을 매개변수로 전달..
	ArrayList<Emp> emplist = dao.empList(ename, job);
	
	
	
	
	
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
			<td onclick="javascript:openWin(<%=e.getEmpno()%>);"><%=e.getEmpno()%></td>
			<td><%=e.getEname()%></td>
			<td><%=e.getJob()%></td>
			<td><%=e.getMgr()%></td>
			<td><%=e.getSal()%></td>
			<td><%=e.getComm()%></td>
			<td><%=e.getDeptno()%></td>
		</tr>
		<%} %>

	</table>
<jsp:include page="paging.jsp" flush="true">
    <jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
    <jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
    <jsp:param name="startPageNo" value="${paging.startPageNo}" />
    <jsp:param name="pageNo" value="${paging.pageNo}" />
    <jsp:param name="endPageNo" value="${paging.endPageNo}" />
    <jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
    <jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
</jsp:include>

</body>
</html>