<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/drinkContent.css" rel="stylesheet" />
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container bootdey">
<c:forEach var="b" items="${drinkContentList}">
<div class="col-md-12">
<section class="panel">
      <div class="panel-body">
          <div class="col-md-6">
          <c:choose>
          	<c:when test="${b.drinkID == 1}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Caffe Americano_coffe.png" alt="">
              </div>
              	</c:when>
              	<c:when test="${b.drinkID == 2}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Caffe Americano_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 3}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Starbucks Dolce Latte.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 4}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Caffe Latte_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 5}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Java Chip Frappuccino_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 6}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced White Chocolate Mocha_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 7}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Coffee Starbucks Double Shot_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 8}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Espresso coffee_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 9}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Espresso Con Panna_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 10}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Espresso Macchiato_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 11}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Hazelnut Starbucks Double Shot_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 12}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Caffe Latte_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 13}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Caffe Mocha_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 14}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Cappuccino_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 15}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Caramel Macchiato_coffee.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 16}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Starbucks Dolce Latte.png" alt="">
              </div>
              	</c:when>
              		<c:when test="${b.drinkID == 17}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Jeju Byuldabang Peanut Latte_coffee.png" alt="">
              </div>
              	</c:when>
              	 		<c:when test="${b.drinkID == 18}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Vanilla Flat White_coffee.png"  alt="">
              </div>
              	</c:when>
              	 		<c:when test="${b.drinkID == 19}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Malcha Cream Frappuccino From Jeju Organic Farm_coffee.png" alt="">
              </div>
              	</c:when>
              	 		<c:when test="${b.drinkID == 20}">
              <div class="pro-img-details">
                 <img src="/resources/assets/img/Iced Grapefruit Honey Black Tea_coffee.png" alt="">
              </div>
              	</c:when>
              </c:choose>
          </div>
          <div class="col-md-4">
              <h4 class="pro-d-title">
                  <a href="#" class="">
                      ${b.drinkName}
                  </a>
              </h4>
              <p>
                 	${b.drinkContent }
              </p>
              <div class="product_meta">
                  <span class="tagged_as"><strong>Tags:</strong> <a rel="tag" href="#">아이스</a>, <a rel="tag" href="#">아메리카노</a></span>
              </div>
              <div class="m-bot15"> <strong>가격 : </strong><span class="pro-price">${b.drinkPrice}원</span></div>
              <div class="form-group">
       
              </div>
              <form method="GET">
	              <P>
	              	<input type="hidden" name="productName" value="${b.drinkID}">	
	              	<input type="radio" onclick="test()" id="size1" name="drinksizeID" value="1">tall 355ml
					<input type="radio" onclick="test()" id="size2" name="drinksizeID" value="2" checked>grande 473ml
					<input type="radio" onclick="test()" id="size3" name="drinksizeID" value="3">venti 591ml
					<input type="hidden" name="drinkPrice" value="${b.drinkPrice}">
					<input type="number"  placeholder="1" id='countResult' name="productQuantity" >
	              </P>
	              <p>
	                  <input class="btn btn-round btn-danger" type="submit" value='담기' onclick="javascript: form.action='/drink/cartInsertList';"/>
		  			  <input class="btn btn-round btn-danger" type="submit" value='주문' onclick="javascript: form.action='/drink/orderInsertList';"/>
	              </p>
              </form>
          </div>
      </div>
  </section>
  </div>
  </c:forEach>
  </div>

<%-- 	<h1>음료 목록 조회</h1>
	<table>
	<c:forEach var="b" items="${drinkContentList}">
	<tr>
		<td>
		<a> ${b.drinkName}</a>
		<a> ${b.drinkContent}</a>
		<a> ${b.drinkPrice}</a>
		<a> ${b.drinkID}</a>
		</td>
	</tr>
	<form method="GET">
	<div>
		<input type="hidden" name="productName" value="${b.drinkID}">
		<input type="radio" onclick="test()" id="size1" name="drinksizeID" value="1">tall 355ml
		<input type="radio" onclick="test()" id="size2" name="drinksizeID" value="2" checked>grande 473ml
		<input type="radio" onclick="test()" id="size3" name="drinksizeID" value="3">venti 591ml	
		<input type="number" id='countResult' name="productQuantity" >
	  	<input type="submit" value='담기' onclick="javascript: form.action='/drink/cartInsertList';"/>
	  	<input type="submit" value='주문' onclick="javascript: form.action='/drink/orderInsertList';"/>
	
	</div>
	<tr>
       <td height="25" >&nbsp;합계:&nbsp;<input style="text-align: center;" name="str" type="text" size="20" id="showSumPrice"></td>
    </tr>

	</form>
	</c:forEach>
	</table>
<h1>사이즈 선택</h1>
	<!-- <button onclick="test()">체크된 객체 value 가져오기</button> -->
	<div>
		<input type="radio" id="iceDrink" name="drink_ice_hot" value="iceDrink">ice 
		<input type="radio" id="hotDrink" name="drink_ice_hot" value="hotDrinks">hot 
	</div>

<h1>사이즈 선택</h1>


<h1>커스텀 선택</h1>
	<table>
	<tr>
		<td>
		시럽 추가 : <input type="number" id='customInfo' name="sysrupAdd">
		휘핑 추가 : <input type="number" id='customInfo' name="whippingAdd">
		드리즐 추가 : <input type="number" id='customInfo' name="drizzleAdd">
		샷 추가 : <input type="number" id='customInfo' name="shotAdd">
		</td>
	</tr>
	</table>
</form>

</body> --%>
<script>
function test() {
	
    var obj_length = document.getElementsByName("drinksizeID").length;
    // 몇 개 담았는지 가져오기
    var productQuantity=document.getElementById("countResult").value;
    
    var result;
   
    var checkNumber;
    for (var i=0; i<obj_length; i++) {
        if (document.getElementsByName("drinksizeID")[i].checked == true) {
            checkNumber=(document.getElementsByName("drinksizeID")[i].value);
        }
    }
    if(checkNumber == 1){
    	result=(4300*productQuantity);
    }else if(checkNumber==2){
    	result=(4800*productQuantity);
    }else if(checkNumber=3){
    	result=(5200*productQuantity);
    }
    
    document.getElementById("showSumPrice").value = result;
}

</script>
</html>