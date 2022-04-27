<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 orderInsertList</title>
</head>
<body>
	<h1>장바구니에서 주문 넘긴 orderInsertList.jsp</h1>
	<table>
	 <form method='get' id='frm' name='frm' action="/drink/payCompleteFromCart">
			<c:forEach var="b" items="${orderList}">
			<tr>
				<td class="text_ct">${b.orderID}
				<input name="cartID" id="productName" type="hidden" value="${b.orderID}" />
				</td>
				<td class="text_ct">${b.productName}</td>
				<td class="text_ct">${b.drinksizeID}</td>
				<td class="text_ct">${b.productQuantity}개</td>
			</tr>
				</c:forEach>
				</table>
				<b>결제 하시겠습니까? </b>
					<input type="submit" value="결제"
						onclick="javascript: form.action='payCompleteFromCart';"/>
					
	</form>
</body>

<script type="text/javascript">
function checkedList(){
	var checklist = [];
	var listID= [];
	
	 $('input:checkbox[type=checkbox]:checked').each(function () 
				{
			         var chk =$(this).attr("value1");
			          listID.push(chk);
			    console.log(listID);
			   });	
	 document.getElementById("checkListID").value = listID;
	 
}
</script>

<!-- <script type="text/javascript" src="../폴더명/파일명.js"></script> -->

</html>