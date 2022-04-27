<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>주문 조회 목록 orderList</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    table th,td{text-align: center;}
</style>
<body>
	<div class="container">
	<h1>주문 목록 조회 orderList</h1>
	
	<table class="table table-bordered id="tbl-product">
			  <colgroup>
               <col style="width : 10%;"/>
               <col style="width : 17%;"/>
               <col style="width : 25%;"/>
               <col style="width : 15%;"/>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
            </colgroup>
             <tr>
               <th>주문 ID</th>
               <th>주문 번호</th>
               <th>상품 이름</th>
               <th>상품 수량</th>
               <th>상품 사이즈</th>
               <th>가격</th>
            </tr>
             <c:if test="${orderList eq null or empty orderList}">
               <tr>
                  <td colspan="4"><b>주문 내역이 없습니다.</b></td>
               </tr>
            </c:if>
             <c:forEach var="b" items="${orderList}" varStatus="st">
             	<div>
             		<tr>
             			<td class="text_ct">${b.orderID}</td>
             			<td class="text_ct">${b.orderCode}</td>
             			<td class="text_ct">${b.productName}</td>
             			<td class="text_ct">${b.productQuantity}</td>
             			<td class="text_ct">${b.drinksizeID}</td>
             			<td class="text_ct">${b.price}</td>
             		</tr>	
             	</div>
             </c:forEach>
	</table>
</body>
</html>
