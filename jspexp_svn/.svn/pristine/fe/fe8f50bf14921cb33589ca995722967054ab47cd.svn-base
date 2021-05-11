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


1. jsp프로그래밍을 위한 툴 설치 순서와 설정 방법에 대하여 기술 하세요.
    1) jdk
    - jdk 다운로드
    2) eclipse
    - 이클립스 다운로드
    3) svn
    - help-eclipse market place-svn검색-subclipse 다운로드 
    - window-show view-other-svn repositories
    - svn repositories-new-repositories location-url입력-username,password입력 
    4) tomcat
    - servers-difine a new server-tomcat 8.0 server-port 앞자리 7로 변경
    
2. jsp에서 일반 application 프로그램과 달리 scope를 설정한다.
이 scope가 무엇인지 scope의 범위에 대하여 기술하세요.
-- application > session > request > pagecontext

3. jsp 프로그램을 start.jsp 만들었다. was에서 처리되는 순서를 기술하세요.
-- 모르겠어요


4. client단 프로그램으로 http://192.168.0.12:7090/jspexp/a01_basic/start.jsp
라고 호출하였다.
dinamic web project 생성 폴더 기준으로 실제 호출되는 파일 경로를 기술하세요.
-- jspexp-src-main-webapp-a01_basic-start.jsp

5.jsp에서 mvc란 무엇인지? 약어 위주로 기술하세요.
-- Model-View-controller

6. 0417.jsp?product=사고&price=3000&cnt=5
를 요청하여 화면에 물건명 가격 갯수 형식으로 출력 처리 하세요.

--%>

 <%
 String product = request.getParameter("product");
 String price = request.getParameter("price");
 String cnt = request.getParameter("cnt");
 %>

	<h2>물건명 : <%=product %> 가격 :  <%=price %> 갯수  <%=cnt %></h2> 
	
 
 
</body>
</html>