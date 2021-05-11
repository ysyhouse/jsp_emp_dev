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
<%-- 구매물품계산
form하위에
물건명
가격
갯수
구매  버튼 클릭시 
하단에 

ㅇㅇㅇ을 ㅇㅇㅇ원 ㅇㅇㅇ개 구매하여 총비용이 ㅇㅇㅇ원입니다.
출력하게 하셍료.
el을 활용하여 

 --%>
<body>
<h2 align="center"></h2>
<form method = "post"> <%-- post방식은 url로 안나타나고 요청 바디만으로 들어가서 처리가된다. --%>
<table>
	<col width="20%">
	
	<tr><th>물건명</th><td><input type="text" name="num01"/></td></tr>
	<tr><th>가격</th><td><input type="text" name="num02"/></td></tr>
	<tr><th>갯수</th><td><input type="text" name="num03"/></td></tr>
	<tr><th colspan="2"><input type="submit" value="연산"/></tr> <%--질문 ~~ submit연결  --%>

</table>
</form>
<c:if test="${not empty param.num01}">
<h3 align="center">
${param.num01 } 을 ${param.num02 }원 ${param.num03 }개 구매하여 총 비용이 ${param.num02*param.num03} 입니다.

</h3>
</c:if>

</body>
</html>