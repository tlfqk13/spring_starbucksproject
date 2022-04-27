<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>장바구니 목록 조회</h1>
	<table>
		<c:forEach var="b" items="${cartList}">
		<tr>
			<td>
			<a> ${b.productQuantity}</a>
			<a> ${b.productName}</a>
			<a> ${b.price}</a>
			</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>
