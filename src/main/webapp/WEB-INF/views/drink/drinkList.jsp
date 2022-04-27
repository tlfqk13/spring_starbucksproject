<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
<body>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<div class="container pt-5">
              <div class="row">
                <div class="col-md-8 order-md-2 col-lg-9">
                  <div class="container-fluid">
                    <div class="row   mb-5">
                      <div class="col-12">
                        <div class="dropdown text-md-left text-center float-md-left mb-3 mt-3 mt-md-0 mb-md-0">
                          <label class="mr-2">Sort by:</label>
                          <a class="btn btn-lg btn-light dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Relevance <span class="caret"></span></a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown" x-placement="bottom-start" style="position: absolute; transform: translate3d(71px, 48px, 0px); top: 0px; left: 0px; will-change: transform;">
                            <a class="dropdown-item" href="#">Relevance</a>
                            <a class="dropdown-item" href="#">Price Descending</a>
                            <a class="dropdown-item" href="#">Price Ascending</a>
                            <a class="dropdown-item" href="#">Best Selling</a>
                          </div>
                        </div>
                        <div class="btn-group float-md-right ml-3">
                          <button type="button" class="btn btn-lg btn-light"> <span class="fa fa-arrow-left"></span> </button>
                          <button type="button" class="btn btn-lg btn-light"> <span class="fa fa-arrow-right"></span> </button>
                        </div>
                        <div class="dropdown float-right">
                          <label class="mr-2">View:</label>
                          <a class="btn btn-lg btn-light dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">9 <span class="caret"></span></a>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown" x-placement="bottom-end" style="will-change: transform; position: absolute; transform: translate3d(120px, 48px, 0px); top: 0px; left: 0px;">
                            <a class="dropdown-item" href="#">12</a>
                            <a class="dropdown-item" href="#">24</a>
                            <a class="dropdown-item" href="#">48</a>
                            <a class="dropdown-item" href="#">96</a>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    <!-- 
							<c:forEach var="b" items="${drinkList}">
								<tr>
									<td>
									<a href="drinkContentList?drinkID=${b.drinkID}">${b.drinkName}</a>
									<a> ${b.drinkPrice}</a>
									</td>
								</tr>
						</c:forEach> 
						-->
                    <div class="row">
                    <c:forEach var="b" items="${drinkList}">
                      <div class="col-6 col-md-6 col-lg-4 mb-3">
                        <div class="card h-100 border-0">
                          <div class="card-img-top">
                          <c:choose>
	                            <c:when test="${b.drinkID == 1}">
	                            	<img src="/resources/assets/img/Iced Caffe Americano_coffe.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	  <c:when test="${b.drinkID == 2}">
	                            	<img src="/resources/assets/img/Caffe Americano_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	  <c:when test="${b.drinkID == 3}">
	                            	<img src="/resources/assets/img/Iced Starbucks Dolce Latte.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	  <c:when test="${b.drinkID == 4}">
	                            	<img src="/resources/assets/img/Iced Caffe Latte_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	  <c:when test="${b.drinkID == 5}">
	                            	<img src="/resources/assets/img/Java Chip Frappuccino_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	  <c:when test="${b.drinkID == 6}">
	                            	<img src="/resources/assets/img/Iced White Chocolate Mocha_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	 <c:when test="${b.drinkID == 7}">
	                            	<img src="/resources/assets/img/Coffee Starbucks Double Shot_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	 <c:when test="${b.drinkID == 8}">
	                            	<img src="/resources/assets/img/Espresso coffee_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	 <c:when test="${b.drinkID == 9}">
	                            	<img src="/resources/assets/img/Espresso Con Panna_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	 <c:when test="${b.drinkID == 10}">
	                            	<img src="/resources/assets/img/Espresso Macchiato_coffee.png" class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	 <c:when test="${b.drinkID == 11}">
	                            	<img src="/resources/assets/img/Hazelnut Starbucks Double Shot_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	<c:when test="${b.drinkID == 12}">
	                            	<img src="/resources/assets/img/Iced Caffe Latte_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	<c:when test="${b.drinkID == 13}">
	                            	<img src="/resources/assets/img/Iced Caffe Mocha_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	<c:when test="${b.drinkID == 14}">
	                            	<img src="/resources/assets/img/Iced Cappuccino_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	<c:when test="${b.drinkID == 15}">
	                            	<img src="/resources/assets/img/Iced Caramel Macchiato_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	<c:when test="${b.drinkID == 16}">
	                            	<img src="/resources/assets/img/Iced Starbucks Dolce Latte.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          		<c:when test="${b.drinkID == 17}">
	                            	<img src="/resources/assets/img/Jeju Byuldabang Peanut Latte_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          		<c:when test="${b.drinkID == 18}">
	                            	<img src="/resources/assets/img/Vanilla Flat White_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          		<c:when test="${b.drinkID == 19}">
	                            	<img src="/resources/assets/img/Malcha Cream Frappuccino From Jeju Organic Farm_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
	                          	   		<c:when test="${b.drinkID == 20}">
	                            	<img src="/resources/assets/img/Iced Grapefruit Honey Black Tea_coffee.png"  class="img-fluid mx-auto d-block" alt="Card image cap">
	                          	</c:when>
                          	</c:choose>
                          </div>
                          <div class="card-body text-center">
                            <h4 class="card-title">
                              <a href="drinkContentList?drinkID=${b.drinkID}"  class=" font-weight-bold text-dark text-uppercase small"> ${b.drinkName}</a>
                            </h4>
                          </div>
                        </div>
                      </div>
                      </c:forEach> 
                     <!-- ****************************************************************************************************************************** -->
                    </div>
                    <div class="row sorting mb-5 mt-5">
                      <div class="col-12">
                        <a class="btn btn-light">
                          <i class="fas fa-arrow-up mr-2"></i> Back to top</a>
                        <div class="btn-group float-md-right ml-3">
                          <button type="button" class="btn btn-lg btn-light"> <span class="fa fa-arrow-left"></span> </button>
                          <button type="button" class="btn btn-lg btn-light"> <span class="fa fa-arrow-right"></span> </button>
                        </div>
                        <div class="dropdown float-md-right">
                          <label class="mr-2">View:</label>
                          <a class="btn btn-light btn-lg dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">12 <span class="caret"></span></a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">12</a>
                            <a class="dropdown-item" href="#">24</a>
                            <a class="dropdown-item" href="#">48</a>
                            <a class="dropdown-item" href="#">96</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div><div class="col-md-4 order-md-1 col-lg-3 sidebar-filter">
                  <h3 class="mt-0 mb-5">Showing <span class="text-primary"></span> Products</h3>
                  <h6 class="text-uppercase font-weight-bold mb-3">Categories</h6>
                  <div class="mt-2 mb-2 pl-2">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="category-1">
                      <label class="custom-control-label" for="category-1">콜드 브루커피</label>
                    </div>
                  </div>
                  <div class="mt-2 mb-2 pl-2">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="category-2">
                      <label class="custom-control-label" for="category-2">에스프레소</label>
                    </div>
                  </div>
                  <div class="mt-2 mb-2 pl-2">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="category-3">
                      <label class="custom-control-label" for="category-3">프라푸치노</label>
                    </div>
                  </div>
                  <div class="mt-2 mb-2 pl-2">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="category-4">
                      <label class="custom-control-label" for="category-4">블렌디드</label>
                    </div>
                  </div>
                  <div class="mt-2 mb-2 pl-2">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" class="custom-control-input" id="category-5">
                      <label class="custom-control-label" for="category-5">티(티바나)</label>
                    </div>
                  </div>
              </div>
            </div>
   </body>
</html>