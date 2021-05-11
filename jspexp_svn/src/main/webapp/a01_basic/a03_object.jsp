<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="jspexp.z01_vo.Person"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name="홍길동";
	int age = 25;
	String loc="서울 신림동";
/*
# 객체의 선언과 활용
1. class 선언. 필드/생성자/메서드
2. jsp에서 import 처리.
3. 객체의 생성.데이터 할당.
4. 화면에 메서드를 통해서 출력 처리.
*/	
	Person p01 = new Person("홍국영",42,"서울 강남");
	Person p02 = new Person();
	p02.setName("김좌진");
	p02.setAge(35);
	p02.setLoc("충북 보은");
	// jsp의 변수를 session scope로 선언하는 방식
	//    page/request/session/application
	
	// pageContext : page 이페이지에서만 사용 가능하는 변수 선언.
	pageContext.setAttribute("p03", p02); 
	// el태그를 활용할 수 있음..
%>
	<h2>이름:<%=p01.getName()%></h2>
	<h2>나이:<%=p01.getAge()%></h2>
	<h2>사는 곳:<%=p01.getLoc()%></h2>
	<h2>이름:${p03.name}</h2> <%--el태그로 <%=p02.getName()%>과 동일 --%>
	<h2>나이:${p03.age}</h2>
	<h2>사는 곳:${p03.loc}</h2>
	
	

</body>
</html>