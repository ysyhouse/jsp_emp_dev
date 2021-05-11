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
		$("h2").text("도서관 웹 시스템");
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<%--
   2) 도서관에 가서 시스템 사용
   	빌릴도서 : [     ]
	대여기간 : [     ]
	대여자 : [   ]
	      [대출] ==> 클릭시, 
	      request.getParameter(), ${param.요청}
	처리결과를 출력 처리
 --%>
 <%--
 submit 클리시, 해당 페이지로 요청값 호출..
 0418_rev.jsp?bkname=jsp기초&priod=+2021-04-25&lentName=홍길동
  --%>
<form action="0418_rev.jsp"> 
<table>
	<col width="50%">
	<tr><th>빌린도서</th><td><input type="text" name="bkname"/></td></tr>
	<tr><th>대여기간</th><td><input type="text" name="priod"/></td></tr>
	<tr><th>대여자</th><td><input type="text" name="lentName"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="대출"/></td></tr>
</table>
</form>
</body>
</html>