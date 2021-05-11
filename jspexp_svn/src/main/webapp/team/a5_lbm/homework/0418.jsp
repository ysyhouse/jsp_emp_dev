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

과제


1. [옵션] 클래스의 구성요소(생성자, 필드, 메서드) 사용법 확인
2. music클래스 (타이틀, 싱어, 발매년도) vo 클래스 선언
   1) jsp 스크립틀릿으로 출력
   2) el 태그로 출력 (request.setattribute()활용
   3) usebean을 활용하여 출력
3. 반복문과 조건문 사용
   0) jsp 스크립틀릿, jstl 기본형식 선언
   1) jsp 스크립틀릿, jstl 으로 출력 10-20까지 출력
   2) jsp 스크립틀릿으로 출력 100-80까지 출력
   3) jsp 스크립틀릿, jstl 으로 출력 1-20까지 짝수 출력
   4) jstl을 이용하여 arraylist<integer> requtest.setatrribute() 으로 선언하여 물건의 가격을 할당하고 테이블의 리스트로 출력
4. 요청값 처리
   1)페이지와 query string의 기본형식과 form 하위 객체 name과 value의 관계 정리
   2)도서관에 가서 시스템 사용
       빌릴 도서 : [   ]
       대여 기간 : [   ]
       대여자 :   [   ]
            [대출] 클릭시 request.getparameter(), ${param.요청}
            처리결과를 출력 처리
5. session scope 범위를 usebean을 활용하여 간단한 활용예제를 처리하세요.
            
   
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
<table>
	<col width="100%">
	<tr><th>타이틀</th></tr>
	<tr><td>내용</td></tr>
	
</table>
</body>
</html>