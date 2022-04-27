<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니에서 넘어 온 결제</title>
</head>
<body>
	<h1>결장바구니에서 넘어 온 결제</h1>
	<table>
		<c:forEach var="b" items="${payList}">
				<div>
             		<tr>
             			<td class="text_ct">${b.orderID}</td>
             			<td class="text_ct">${b.orderCode}</td>
             			<td class="text_ct">${b.userID}</td>
             			<td class="text_ct">${b.productQuantity}</td>
             			<td class="text_ct">${b.drinksizeID}</td>
             			<td class="text_ct">${b.productName}</td>
             			<td class="text_ct">${b.price}</td>
             			<td class="text_ct">${b.cartID}</td>	
             			
             	</div>
		</c:forEach>
	</table>
	<b>결제 하시겠습니까? </b>
	<c:forEach var="b" items="${payList}">
		<button type="button" id="pay" onclick="location.href='payCompleteFromCart?orderID=${b.orderID}'; ">결제</button>
	</c:forEach>
	<!-- <button type="button" onclick="location.href='joinUs.jsp' "> -->
</body>
</html>
