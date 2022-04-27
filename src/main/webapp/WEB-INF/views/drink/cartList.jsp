
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<title>장바구니</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css">
<link rel="stylesheet" href="/resources/assets/css/cartList.css"> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>

<script type="text/javascript">
function checkedList(){
	var checklist = [];
	var listID= [];
	alert("여기까지 오나요??")
	 $('input:checkbox[name=test]:checked').each(function () 
				{
			         var chk =$(this).attr("value1");
			          listID.push(chk);

			    console.log(listID);
			   });	
	 document.getElementById("checkListID").value = listID;
	 
}
	

function itemSum()
{
   var items = [];
   var sum=0;
   var stest=[];
   $('input:checkbox[type=checkbox]:checked').each(function () 
	{
       items.push($(this).attr("value2")); //value2 = price
       for(var i=0;i<items.length;i++)
       {
          sum=Number(sum)+Number(items[i]);
          stest[i]=sum;
       }
       sum=0; 
   });
   var sumPrice = stest[stest.length-1];
   if(isNaN(sumPrice))
   {
      sumPrice = 0;
   }   
   var message=sumPrice;
  	console.log(message);
    document.getElementById("showSumPrice").value = message;
}
</script>





</head>
<style>
    table th,td{text-align: center;}
</style>
<!-- 주문 폼 시작 -->
   <body>
  
     <div class="h-screen bg-gray-300">
    <div class="py-12">
        <div class="max-w-md mx-auto bg-gray-100 shadow-lg rounded-lg md:max-w-5xl">
            <div class="md:flex ">
                <div class="w-full p-4 px-5 py-5">
                    <div class="md:grid md:grid-cols-3 gap-2 ">
                 
                        <div class="col-span-2 p-5">
                            <h1 class="text-xl font-medium ">Shopping Cart</h1>
                             
                             
                             <c:forEach var="b" items="${cartList}" varStatus="st">
                               <form method='post' id='frm' name='frm' action="/drink/cartInOrderInsertList">
          						            	<input type="hidden" id="checkListID" name="checkListID" value="">
          						            

                            <div class="flex justify-between items-center mt-6 pt-6">
                            
                                
                            
                                <div class="flex items-center">
                                	<div>
                                	<input name="test" type="checkbox"onclick="return itemSum()" id="selectBtn" value1="${b.cartID}" value2="${b.price }" />
                         			</div>
                                	<img src="/resources/assets/img/${b.productName}_coffee.png" width="60" class="rounded-full ">
                                    <div class="flex flex-col ml-3"> 
                                    	<span class="md:text-md font-medium">${b.productName}</span> 
                                    	<span class="text-xs font-light text-gray-400">${b.drinksizeID}</span> 
                                    </div>
                                </div>
                                <div class="flex justify-center items-center">
                                    <div class="pr-8 flex "> 
                                    	<span class="font-semibold">-</span> 
                                    	<input type="text" class="focus:outline-none bg-gray-100 border h-6 w-8 rounded text-sm px-2 mx-2" value="${b.productQuantity}"> 
                                    	<span class="font-semibold">+</span> 
                                    </div>
                                    <div class="pr-8 "> 
                                    	<span class="text-xs font-medium">${b.price}</span> 
                                    </div>
                                    <div> 
                                    	<i class="fa fa-close text-xs font-medium"></i> 
                                    </div>
                                </div>
                            </div>
                           
                            </c:forEach>
								
								




                           
                            <div class="flex justify-between items-center mt-6 pt-6 border-t">
                                <div class="flex items-center"> <i class="fa fa-arrow-left text-sm pr-2"></i> <span class="text-md font-medium text-blue-500"><a href="/">Continue Shopping</a></span> </div>
                           		<div height="25" >&nbsp;합계:&nbsp;<input style="text-align: center;" name="str" type="text" size="20" id="showSumPrice"></div >
                           
                            </div>
                            	
                      </div>
                      	
                       	</form>
                  		<form action="">
                        <div class=" p-5 bg-gray-800 rounded overflow-visible" id="cardLength"> <span class="text-xl font-medium text-gray-100 block pb-3">Card Details</span> <span class="text-xs text-gray-400 ">Card Type</span>
                            <div class="overflow-visible flex justify-between items-center mt-2">
                                <div class="rounded w-52 h-28 bg-gray-500 py-2 px-4 relative right-10"> <span class="italic text-lg font-medium text-gray-200 underline">VISA</span>
                                    <div class="flex justify-between items-center pt-4 "> <span class="text-xs text-gray-200 font-medium">****</span> <span class="text-xs text-gray-200 font-medium">****</span> <span class="text-xs text-gray-200 font-medium">****</span> <span class="text-xs text-gray-200 font-medium">****</span> </div>
                                    <div class="flex justify-between items-center mt-3"> <span class="text-xs text-gray-200">${card.userName }</span> <span class="text-xs text-gray-200">${card.expiryDate }</span> </div>
                                </div>
                                <div class="flex justify-center items-center flex-col"> <img src="https://img.icons8.com/color/96/000000/mastercard-logo.png" width="40" class="relative right-5" /> <span class="text-xs font-medium text-gray-200 bottom-2 relative right-5">mastercard.</span> </div>
                            </div>
                            <div class="flex justify-center flex-col pt-3"> <label class="text-xs text-gray-400 ">Name on Card</label> <input type="text" class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4" placeholder="${card.userName }"> </div>
                            <div class="flex justify-center flex-col pt-3"> <label class="text-xs text-gray-400 ">Card Number</label> <input type="text" class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4" placeholder="**** **** **** ****" value="${card.cardNum }"> </div>
                            <div class="grid grid-cols-3 gap-2 pt-2 mb-3">
                                <div class="col-span-2 "> <label class="text-xs text-gray-400">Expiration Date</label>
                                    <div class="grid grid-cols-2 gap-2"> <input type="text" class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4" placeholder="${card.expiryDate }"> </div>
                                </div>
                                <div class=""> <label class="text-xs text-gray-400">CVC</label> <input type="text" class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4" placeholder="${card.cvc }"> </div>
                            
                            
                            </div> <button class="h-12 w-full bg-blue-500 rounded focus:outline-none text-white hover:bg-blue-600" type="submit" form="frm" id="orderbtn" onclick= "return checkedList()">주문하기</button>
                       				
      						</form>
                       
                        </div>
                        
                        	
                        
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> 
   
  <%--   <div class="container">
      <h1>장바구니 목록 조회</h1>
      
         <table class="table table-bordered id="tbl-product">	
            <colgroup>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
               <col style="width : 17%;"/>
            </colgroup>
            <tr>
               <th>선택</th>
               <th>상품 내용</th>
               <th>음료 사이즈</th>
               <th>주문량</th>
               <th>가격</th>
            </tr>
            <c:if test="${cartList eq null or empty cartList}">
            	
               <tr>
                  <td colspan="4"><b>담긴 상품이 없습니다.</b></td>
               </tr>
            </c:if>
            <c:forEach var="b" items="${cartList}" varStatus="st">
            <form method='post' id='frm' name='frm' action="/drink/cartInOrderInsertList">
            	<input type="hidden" id="checkListID" name="checkListID" value="">
					<div>
						<tr>
							<td class="text_ct"><input name="test" type="checkbox"
								onclick="itemSum()" id="selectBtn" value1="${b.cartID}" value2="${b.price }" /></td>
							<td class="text_ct">${b.productName}
							</td>
							<td class="text_ct">${b.drinksizeID}
							</td>
							<td class="text_ct">${b.productQuantity}개 
							</td>
							<td class="text_ct"><fmt:formatNumber value="${b.price}"
									pattern="###,###" />원 
							</td>
						</tr>
					</div>
				
         </c:forEach>
         		<tr>
         		<td>
         		<input type="submit" value="주문"
								onclick= "checkedList()"/>
         		<button type="button" class="btn btn-outline btn-primary pull-right" id="selectBtn">선택</button>
         		
         		</td>
         		</tr>
         		</form>
            <tr>
         		<td height="25" >&nbsp;합계:&nbsp;<input style="text-align: center;" name="str" type="text" size="20" id="showSumPrice"></td>
            	<div class="col-lg-12" id="ex3_Result1"></div> 
				<div class="col-lg-12" id="ex3_Result2" ></div> 
            </tr>
         </table>  
	</body> --%>

</html>


 
 


 
 
 
 