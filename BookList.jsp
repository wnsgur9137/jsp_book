<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<!DOCTYPE html>
<html>
<head>
<style>
.bold {font-weight:bold;}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8"); 
	int fileSize = 1024*1024*10; 
	String uploadPath = session.getServletContext().getRealPath("/img");
	MultipartRequest multi=null;
	multi=new MultipartRequest(request, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy()); 
	String uploadFile = multi.getParameter("uploadfile");
	String name		= multi.getParameter("name");
	String content	= multi.getParameter("content");
	String author 	= multi.getParameter("author");
	String publisher 	= multi.getParameter("publisher");
	String price 	= multi.getParameter("price");
	
%>

</head>
<body>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td colspan="1" bgcolor="#151515">
		<jsp:include page="/menu.jsp" flush="false" ></jsp:include>
		</td>
		<tr><td colspan="1" bgcolor="#F2F2F2">
		<h1>도서 목록</h1>
		</td>
	</table>
	<span>
	<img src=<%="./img/"+uploadFile%> width=150 height=170 vspace=20 hspace =30 align="left"></img>
	<table cellspacing="0" class="bold" width=400>
		<td><span style = " font-size:2em; font-weight:900"><%=name%></span></td>
		</tr>
		<tr>
		<td><br><%=content %></td>
		</tr>
		<td><br><%=author %> | <%=publisher %> | <%=price %></td>
		</tr>
	</table>
	</form>
	</span>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td><jsp:include page="/footer.jsp" flush="false" ></jsp:include></td></tr>
	</table>
</body>
</html>
