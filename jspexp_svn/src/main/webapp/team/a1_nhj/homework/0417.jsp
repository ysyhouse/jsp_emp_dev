<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
1. jsp 프로그래밍을 위한 툴 설치 순서와 설치 방법에 대하여 기술하세요.
	1) jdk : 구글 다운로드
	2) eclipse : 환경설정
		-C:\z01_weekend\workspace 실행
	  	-한글 encoding : utf-8 방식
       	-workspace
       	-html,css,jsp
	3) svn
		-eclipse > marketplace > svn 다운로드 설치
		-https://192.168.0.21/svn/web
		-로그인 정보 future/7777
	4) tomcat
		-eclipse 하단 servers에서 New > Server > Apache > Tomcat v8.0 설치
		-Tomcat 포트 앞자리 7로 변경
2. jsp에서 일방 application프로그래밍과 달리 scope를 설정한다.
이 scope가 무엇인지 scope의 범위에 대하여 기술하세요
	page, request, session, application
	
3. jsp프로그램을 start.jsp를 만들었다. WAS에서 처리되는 순서를 기술하세요.
	1. 사용자가 웹 브라우저에 클릭이나 submit등의 액션을 취해 요청을 합니다.
	2. 웹 서버는 웹 컨테이너(WAS)에게 전달합니다.
	3. 웹 컨테이너(WAS)는 요청받은 jsp파일을 servlet(HTML in Java)으로 변환합니다. (.java 파일로 변환)
	4. 컴파일 하면 jsp.class파일이 생성됩니다. 
	5. 컴파일 된 .class파일을 순서대로 웹 브라우저에게 응답합니다.

4. client단 프로그램 http://192.168.0.12:7080/jspexp/a01_basic/start.jsp
라고 호출아였다. Dynamic web projct생성 폴드 기준으로 실제 호울되는 파일 경로를 기술하세요.
	jspexp\src\main\webapp\index.jsp
	jspexp\src\main\webapp 폴드에서 오른쪽 마우스클릭
	index.jsp 추가

5. jsp에서 MVC란 무엇인지? 약어 위주로 기술하세요.
	View : 클라이언트의 요청을 받으며, 응답을 해주고 화면을 구성해준다.
	Controller : View로 부터 요청을 전달 받으며, Model로부터 넘어온 데이터를 view 측에 전달한다.
	Model
		DTO(Data Transfer Object) : 데이터 담는 객체를 정의한다.
		Service : 클라이언트가 요청하는 서비스에 대해서 처리한다. (ex 트랜잭션)
		DAO(Data Access Object) : 데이터베이스와 연결되는 곳이다.
6. http://localhost:7080/jspexp/homework/0417.jsp?product=%EC%82%AC%EA%B3%BC&price=3000&cnt=5
를 요청하여 화면에 물건명 @@@가격 @@@갯수 @@@ 형식으로 출력 처리하세요.
 --%>
 <!-- 6. 숙제 풀이  -->
<%
String product = request.getParameter("product");
int price = Integer.parseInt(request.getParameter("price"));
int cnt = Integer.parseInt(request.getParameter("cnt"));
%>
<h3>물견명: <%=product%> <br>가격 : <%=price%><br> 갯수 : <%=cnt%> 입니다</h3>



</body>
</html>