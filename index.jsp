<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>  
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td colspan="1" bgcolor="#151515">
		<jsp:include page="/menu.jsp" flush="false" ></jsp:include>
		</td>
		<tr><td colspan="1" bgcolor="#F2F2F2">
		 <br><br><br><br><h1 style="text-align:center;">도서 웹 쇼핑몰</h1><br><br><br><br><br>
		</td>
		<tr><td colspan="1">
		 <h3 style="text-align:center;">Welcome to Book Market!</h3>
		</td>
		<tr><td colspan="1">
		 <p style="text-align:center;">현재 접속 시각 :<%= sf.format(nowTime) %></p>
		</td>
		<tr><td colspan="1" >
		<jsp:include page="/footer.jsp" flush="false" ></jsp:include>
		</td>
	</table>
</body>
</html>