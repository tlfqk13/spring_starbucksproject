<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>카테고리 조회</h1>
<table>
<c:forEach var="b" items="${list}">
<tr>
	<td>
	<a href="/drink/drinkList">${b.drinkTypeName}</a>
	</td>
</tr>

</c:forEach>
</table>
</body>
</html>