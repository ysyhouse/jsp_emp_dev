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
1. jsp프로그래밍을 위한 툴 설치 순서와 설정 방법에 대하여 기술하세요.
	1) jdk : oracle jdk download
	2) eclipse : 환경 설정..
		eclipse download
		한글 Windows preference general workspace 및 web 하위 css/html/jsp 
	3) svn
		eclipse marketplace svn 설치
		window==> show ==> svn ==> repositories
		https://ip/svn/web
		계정/비번
	4) tomcat
		server ==> 추가 apache tomcat 8.0, port변경
2. jsp에서 일반 application 프로그래밍과 달리 scope를 설정한다.
	이 scope가 무엇인지 scope의 범위에 대하여 기술하세요.
	변수가 페이지나 서버와의 관계속에서 지속되는 범위를 설정하는 것을 말한다.
	page/request/session/application
	
3. jsp 프로그램을 start.jsp를 만들었다. WAS에서 처리되는 순서를 기술하세요.
	 start.jsp ==> start@@@servlet.java ==> @@@servlet.class ==> was메모리로딩
	 ==> reponse객체에 의해 java+html코드 client 전달 ==> 서버에서 전달되어온 html코드 랜더링
4. client단 프로그램으로 
http://192.168.0.12:7080/jspexp/a01_basic/start.jsp
라고 호출하였다. Dynamic web project 생성 폴드 기준으로 
실제 호출되는 파일 경로를 기술하세요.
	http://192.168.0.12:7080/jspexp/와 서버안에 소스
	jspexp\src\main\webapp은 동일한 경로기준이다.
	그러므로 http://192.168.0.12:7080/jspexp/는 해당 폴드의 절대경로가 된다.

5. jsp에서 MVC란 무엇인지? 약어 위주로 기술하세요!!
	Model View Controller
	jsp의 기능적 분리를 처리할 수 있는 웹 개발 패턴을 의미한다.
6. 0417.jsp?product=사과&price=3000&cnt=5
를 요청하여  화면에  물건명 @@@  가격 @@@ 갯수 @@@ 형식으로 출력 처리하세요.
http://localhost:7080/jspexp/team/a0_yhs/homework/0417.jsp?product=사과&price=3000&cnt=5
 --%>
 	<h2>물건명:<%=request.getParameter("product") %></h2>
 	<h2>가격:<%=request.getParameter("price") %></h2>
 	<h2>갯수:<%=request.getParameter("cnt") %></h2>
</body>
</html>