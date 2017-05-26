<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="${pageContext.servletContext.contextPath }/guestbook/list" method="POST">
		<input type="hidden" name="a" value="add" />
		<table border="1" width="500">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="message" cols="60" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br>
	<c:forEach items="${list }" var="list" varStatus="stat">
		<table width="510" border="1">
			<tr>
				<td>${stat.count }</td>
				<td>${list.name }</td>
				<td>${list.date }</td>
				<td><a
					href="${pageContext.servletContext.contextPath }/guestbook/deleteform/${list.no}">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4">${fn:replace(list.message, newLine, "<br>") }</td>
			</tr>
		</table>
	</c:forEach>
</body>
</html>