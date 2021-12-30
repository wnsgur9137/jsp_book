<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>  
<%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.bold {font-weight:bold;}
</style>
</head>
<body>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td colspan="1" bgcolor="#151515">
		<jsp:include page="/menu.jsp" flush="false" ></jsp:include>
		</td>
		<tr><td colspan="1" bgcolor="#F2F2F2">
		<h1>도서 등록</h1>
		</td>
	</table>
	<form action = "BookInfo.jsp" method = "post" enctype="multipart/form-data">

	<table cellspacing="0" class="bold">
		<tr>
		<td><br>&emsp;&emsp;도서 코드</td>
		<td><br>&emsp;<input type="text" name="code"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;도서명</td>
		<td><br>&emsp;<input type="text" name="name"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;가격</td>
		<td><br>&emsp;<input type="text" name="price"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;저자</td>
		<td><br>&emsp;<input type="text" name="author"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;출판사</td>
		<td><br>&emsp;<input type="text" name="publisher"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;출판일</td>
		<td><br>&emsp;<input type="text" name="pubdate"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;총 페이지 수</td>
		<td><br>&emsp;<input type="text" name="totpage"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;상세 정보</td>
		<td><br>&emsp;<textarea rows = "5" cols="30" name = "content" placeholder="100자 이상 적어주세요"></textarea></td>
		</form>
		<tr>
		<td><br>&emsp;&emsp;분류</td>
		<td><br>&emsp;<input type="text" name="type"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;재고 수</td>
		<td><br>&emsp;<input type="text" name="count"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;상태</td>
		<td><br>&emsp;
		<input type='radio' name='status' value='신규도서' />신규도서
  		<input type='radio' name='status' value='중고도서' />중고도서
  		<input type='radio' name='status' value='E-Book' />E-Book
  		</td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;이미지</td>
		<td><br>&emsp;<input type="file" name="uploadfile"></td>
		</tr>
		<tr>
		<td><br>&emsp;&emsp;<input type="submit" value = "등록"></td>
		</tr>
	</table>
	</form>
	</form>
	<table width="1000"  cellpadding="5" cellspacing="0">
		<tr><td><jsp:include page="/footer.jsp" flush="false" ></jsp:include></td></tr>
	</table>
</body>
</html>