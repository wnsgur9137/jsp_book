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
	String uploadFile = multi.getFilesystemName("uploadfile");
	String name		= multi.getParameter("name");
	String content	= multi.getParameter("content");
	String code 	= multi.getParameter("code");
	String author 	= multi.getParameter("author");
	String publisher 	= multi.getParameter("publisher");
	String pubdate 	= multi.getParameter("pubdate");
	String totpage 	= multi.getParameter("totpage");
	String count 	= multi.getParameter("count");
	String type 	= multi.getParameter("type");
	String status 	= multi.getParameter("status");
	String price 	= multi.getParameter("price");
%>

</head>
<body>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td colspan="1" bgcolor="#151515">
		<jsp:include page="/menu.jsp" flush="false" ></jsp:include>
		</td>
		<tr><td colspan="1" bgcolor="#F2F2F2">
		<h1>도서 정보</h1>
		</td>
	</table>
	<span>
	<form action = "BookList.jsp" method = "post" enctype="multipart/form-data">
	<input type="hidden" name="name" value="<%=name %>"/>
	<input type="hidden" rows = "5" cols="30" name="content" value="<%=content%>"/>
	<input type="hidden" name="author" value="<%=author%>"/>
	<input type="hidden" name="publisher" value="<%=publisher%>"/>
	<input type="hidden" name="price" value="<%=price %>"/>
	<input type="hidden" name="uploadfile" value="<%=uploadFile%>"/>
	<img src=<%="./img/"+uploadFile%> width=300 height=350 vspace=20 hspace =30 align="left"></img>
	<table cellspacing="0" class="bold" width=500>
		<td><span style = "font-size:2em; font-weight:900"><%=name%></span></td>
		</tr>
		<tr>
		<td><%=content %></td>
		</tr>
		<tr>
		<td><br>도서코드 : <%=code %></td>
		</tr>
		<tr>
		<td>저자 : <%=author %></td>
		</tr>
		<tr>
		<td>출판사 : <%=publisher %></td>
		</tr>
		<tr>
		<td>출판일 : <%=pubdate %></td>
		</tr>
		<tr>
		<td>총 페이지 수 :<%=totpage %></td>
		</tr>
		<tr>
		<td>재고 수 : <%=count %></td>
		</tr>
		<tr>
		<td>분류 : <%=type %></td>
		</tr>
		<tr>
		<td>상태 : <%=status %></td>
		</tr>
		<tr>
		<td>가격 : <%=price %></td>
		</tr>
		<tr>
		<td><br><input type="submit" value = "도서목록"></td>
		</tr>
	</table>
	</form>
	</span>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td><jsp:include page="/footer.jsp" flush="false" ></jsp:include></td></tr>
	</table>
</body>
</html>
