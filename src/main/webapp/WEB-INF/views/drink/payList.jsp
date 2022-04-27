<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">

<link rel="stylesheet" href="/resources/css/payList1.css"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"> 

<title>결제 </title>

<script type="text/javascript">
function formCheck() {

	var cardName = document.getElementById("cardName");
	var cardNum = document.getElementById("cardNum");
	var cardPassword = document.getElementById("cardPassword");
	var expiryDate = document.getElementById("expiryDate");
	var cvc = document.getElementById("cvc");

	if(cardName.value ==""){
		alert("카드 명을 입력해주세요");
		return false;
	}
	if(cardNum.value ==""){
		alert("카드 번호를 입력해주세요");
		return false;
	}
	if(cardPassword.value ==""){
		alert("이름을 입력해주세요");
		return false;
	}
	if(expiryDate.value ==""){
		alert("유효기간을 입력해주세요");
		return false;
	}
	if(cvc.value ==""){
		alert("cvs를 입력해주세요");
		return false;
	}
	return true;
}

</script>

</head>
<body>
<div class="card" style="background-color: #0B421A">
       <div class="card-top border-bottom text-center"> <a href="/" class="back">Back to shop</a> <span id="logo">주문 확인 및 결제</span> </div>
    <c:forEach var="b" items="${payList}">
    <div class="card-body">
        <div class="row upper"> <span><i class="fa fa-check-circle-o"></i> Shopping bag</span> <span><i class="fa fa-check-circle-o"></i> Order details</span> <span id="payment"><span id="three">3</span>Payment</span> </div>
        <div class="row">
            <div class="col-md-7">
                <div class="left border">
                    <div class="row"> <span class="header">&nbsp&nbspPayment</span><br><br>
                        <div class="icons"> <img src="https://img.icons8.com/color/48/000000/visa.png" /> <img src="https://img.icons8.com/color/48/000000/mastercard-logo.png" /> <img src="https://img.icons8.com/color/48/000000/maestro.png" /> </div>
                    </div>
                    <span>Cardholder's name:</span> <input placeholder="name" id="name"> 
                    <form  action="/insertCardInfo" onsubmit="return formCheck();"> 
                   <input type="hidden" value="${b.orderID}" name="orderID">
                    <span>CardName:</span>
                
                    <input type="text" placeholder="cardName" name="cardName" id="cardName">  
                    <span>Card Number:</span> 
                    	<input type="text" placeholder="0000-0000-0000-0000" name="cardNum" id="cardNum">
                    <span>CardPassword:</span> 
                   		 <input type="password" name="cardPassword" id="cardPassword">
                           <div class="row">
                            <div class="col-4"><span>Expiry date:</span><input type="text" placeholder="YY/MM" id="expiryDate" name="expiryDate" > </div>
                            <div class="col-4"><span>CVC:</span> <input type="text" id="cvc" name="cvc" placeholder="***"> </div>
                        </div>

                  	 <c:forEach var="b" items="${payList}">
							<br><button type="submit" id="pay"  class="btn" >카드 등록 및 주문하기</button>
						</c:forEach>
                    	<c:forEach var="b" items="${payList}">
							<button type="button" id="pay"  class="btn" onclick="location.href='payComplete?orderID=${b.orderID}'; ">주문하기</button>
						</c:forEach>
                   
                    </form>
                </div>
            </div>
           </c:forEach>
         <div class="col-md-5">
                <div class="right border">
                <table>
					<c:forEach var="b" items="${payList}">
                    <div class="header">Starbucks Order Info</div>
                    <p>${b.productQuantity} items</p>
                    <div class="row item">
						<div class="col-4 align-self-center"><img class="img-fluid"  src="/resources/assets/img/${b.productName}_coffee.png" ></div>
                        <div class="col-8">
                            <div class="row"  ><b>&nbsp&nbsp&nbsp가격: ${b.price}</b></div>
                            <div class="row">&nbsp&nbsp&nbsp음료: ${b.productName}</div>
                            <div class="row">&nbsp&nbsp&nbspDrink Quantity: ${b.productQuantity}</div>
                             <div class="row">&nbsp&nbsp&nbspDrink Size: ${b.drinksizeID}</div>
                        </div>
                    </div>  
                    <hr>
                                   
                    <div class="row lower">
                        <div class="col text-left"><b>Total Price</b></div>
                        <div class="col text-right"><b>${b.price}</b></div>
                    </div>
                    <div class="row lower">
                        <div class="col text-left"><a href="#"><u>Add promo code</u></a></div>
                    </div> <!-- <input type="submit" class="btn"  value="주문 하기"> -->
                    <p class="text-muted text-center">Complimentary Shipping & Returns</p>
                </div>
                
                </c:forEach>
			</table>
            </div>
        </div>
    </div>
    <div> </div>
</div>
	<%-- <h1>결제 결제 결제 결제해라 해라 payList</h1>
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
		<button type="button" id="pay" onclick="location.href='payComplete?orderID=${b.orderID}'; ">결제</button>
	</c:forEach> --%>
	<!-- <button type="button" onclick="location.href='joinUs.jsp' "> -->
</body>
</html>
