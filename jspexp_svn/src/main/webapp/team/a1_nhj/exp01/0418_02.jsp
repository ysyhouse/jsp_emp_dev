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
# 구매물품 계산
form 하위에
물건명 : []
가격 : []
갯수 : []
[구매] => submit 클리시
@@@를 @@@원 @@@개 구매하여 총비용이 @@@원입니다.
출력하세요. el활용해서 출력처리.

 --%>
<body>
<h2 align="center"></h2>
<form method="post">
<table>
	<col width="10%">
	<tr><th>물건명</th><td><input type="text" name="product_nm"/></td></tr>
	<tr><th>가격</th><td><input type="text" name="price"/></td></tr>
	<tr><th>갯수</th><td><input type="text" name="cnt"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="구매"/></td></tr>

	
</table>
</form>
<c:if test="${not empty param.product_nm}">
<h4 align="center">
	물건명 : ${param.product_nm}
	가격 : ${param.price} 
	갯수 :${param.cnt} 
	<br>
	${param.product_nm}를 ${param.price} 원 ${param.cnt} 개 구매하여 총비용이 ${param.price * param.cnt}원입니다.
</h4>
</c:if>

</body>
</html>