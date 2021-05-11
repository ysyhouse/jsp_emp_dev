<%@page import="jspexp.b01_database.A01_EmpDao_Mysql"%>
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


<%

String empnoS=request.getParameter("empno");
System.out.print(empnoS);
int empno=1;
if(empnoS != null){
	empno = Integer.parseInt(empnoS);
	System.out.print(empno);
}
	A01_EmpDao_Mysql dao = new A01_EmpDao_Mysql();
    Emp e=dao.empInfo(empno);
	
    
   
%>
<table>

		<col width="30%">


		
			<tr><th>사원번호</th><td><%=e.getEmpno()%></td></tr>
			<tr><th>사원이름</th><td><%=e.getEname()%></td></tr>
			<tr><th>직책</th><td><%=e.getJob()%></td></tr>
			<tr><th>번호</th><td><%=e.getMgr()%></td></tr>
			<tr><th>급여</th><td><%=e.getSal()%></td></tr>
			<tr><th>보너스</th><td><%=e.getComm()%></td></tr>
			<tr><th>부서코드</th><td><%=e.getDeptno()%></td></tr>
		

	</table>
</body>
</html>