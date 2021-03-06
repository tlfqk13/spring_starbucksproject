<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">
    <head>
        <meta charset="UTF-8" />
        <title>Strabuck Coffee KyuDong</title>
        <meta name="description" content="KyuDong" />
        <meta name="author" content="국내 최괴의 커피 전문점 ! 항상 최고의 음료를 선사합니다. 스타벅스만의 프리퀀시를 받아보세요." />
		<meta name="keywords" content="스타벅스, 커피, 텀블러, 머그컵, 아이스아메리카노, 돌체라떼, 그란데, 벤티, 톨, 프리퀀시, 리원드, 리저브드, 사이렌오더, 레디백, 기프티코느 기프티카드, 자바치 프라푸치노">
        <link rel="icon"  href="resources/assets/img/starbucks_favicon.ico" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&amp;family=Noto+Sans:wght@400;700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500;700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Rowdies:wght@300;400&amp;display=swap" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    </head>
    <body>
    	<div class="container">
    		<div class="header-background">
    			<header id="header"  class="header clearfix">
		            <h1 class="header-heading">
		               	<a href="resources/index.html" title="메인 화면으로 이동합니다.">
		               		"스타벅스"
		               	</a>
		            </h1>
		            <nav class="utility clearfix">
		            	<h2 class="a11y-hidden">멤버 메뉴</h2>
		            	<ul class="utility-list clearfix">
			            	<li>
			            		<a href="/member/signIn">Sign In</a>
			            	</li>
			            	<li>
			            		<a href="/drink/cartList">My Starbuck</a>
			            	</li>
			            	<li>
			            		<a href="#">Customer Service & Ideas</a>
			            	</li>
			            	<li>
			            		<a href="#">Find a Strore</a>
			            	</li>
		            	</ul>
		            	<h2 class="a11y-hidden">검색</h2>
		            	<form action="#" method="GET" class="search-form">
		            		<fieldset>
		            			<legend>검색 폼</legend>
		            			<label for="search" class="a11y-hidden">검색어</label>
		            			<input type="search" id="search" name="search" placeholder="검색어를 입력하세요" required>
		            			<button type="button" role="link" class="search-btn">검색</button>
		            		</fieldset>
		            	</form>
		            </nav>
			        <nav class="navigation" >
			        	<h2 class="a11y-hidden">메인 메뉴</h2>
			        		<ul class="menu clearfix" style="list-style: none;">
			        			<li class="menu-item">
			        				<h3 class="sub-menu-heading">
			        					<a href="#" class="menu-heading">COFFEE</a>
			        				</h3>
			        				<div class="sub-menu-box" style="display: none;">
			        					<ul class="sub-menu" >
			        						<li>
			        							<h4>
			        								<a href="#">커피</a>
			        							</h4>
			        							<ul>
			        								<li>
			        									<a href="#">스타벅스 원두</a>
			        								</li>
			        								<li>
			        									<a href="#">스타벅스 원두</a>
			        								</li>
			        								<li>
			        									<a href="#">스타벅스 원두</a>
			        								</li>
			        							</ul>
			        						</li>
			        						<li>
			        						<h4>
			        							<a href="#">나와 어울리는 커피</a>
			        						</h4>
			        						</li>
			        						<li></li>
			        					</ul>
			        					<div class="additional-menu-box">
			        						<dl class="additional-menu">
			        							<dt class="additional-menu-title">
			        								<a href="#">나와 어울리는 커피 찾기</a>
			        							</dt>
			        							<dd class="additional-menu-description">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</dd>
			        							<dt class="additional-menu-title">
			        								<a href="#">최상의 커피를 즐기는 법</a>
			        							</dt>
			        							<dd class="additional-menu-description">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</dd>
			        						</dl>
			        					</div>
			        				</div>
			        			</li>
				            	<li class="menu-item">
				            		<h3 class="sub-menu-heading">
				            			<a href="#" class="menu-heading">MENU</a>
				            		</h3>
				            		<div class="sub-menu-box" style="display:none;">
				            	
				            			<ul class="sub-menu">
				            				<li>
				            					<h4>
				            						<a href="/drink/drinkList">음료</a>
				            					</h4>
				            					<c:forEach var="b" items="${drinkList}">
				            					<ul>
				            						<li>
				            							<a href="drinkContentList?drinkID=${b.drinkID}">${b.drinkName}</a>
				            						</li>
				            					</ul>
				            					</c:forEach>
				            				</li>
				            				<li></li>
				            				<li></li>
				            				<li></li>
				            				<li></li>
				            			</ul>
				            			
				            			<div class="additional-menu-box">
				            				<dl class="additional-menu">
				            					<dt class="additional-menu-title new-icon">
				            						<a href="#">나이트로 콜드 브루</a>
				            					</dt>
				            					<dd class="additional-menu-description">나이트로 커피 정통의 물결치듯 흘러내리는 캐스케이딩과 부드러운 크림을 경험하세요.</dd>
				            				</dl>
				            			</div>
				            		</div>
				            	</li>
				            	<li class="menu-item">
				            		<h3 class="sub-menu-heading">
				            			<a href="#" class="menu-heading">STORE</a>
				            		</h3>
				            		<div class="sub-menu-box" style="display: none;">
				            			<ul class="sub-menu">
				            				<li>
				            					<h4>
				            						<a href="#">매장 찾기</a>
				            					</h4>
				            					<ul>
				            						<li>
				            							<a href="#">퀵 검색</a>
				            						</li>
				            						<li>
				            							<a href="#">지역 검색</a>
				            						</li>
				            						<li>
				            							<a href="#">My 매장</a>
				            						</li>
				            					</ul>
				            				</li>
				            			</ul>
				            			<div class="additional-menu-box">
				            				<dl class="additional-menu">
				            					<dt class="additional-menu-title">
				            						<a href="#">매장찾기</a>
				            					</dt>
				            					<dd class="additional-menu-description">보다 빠르게 매장을 찾아보세요.</dd>
				            					<dt class="additional-menu-title new-icon">
				            						<a href="#">평촌역점</a>
				            					</dt>
				            					<dd class="additional-menu-description">1호점 특화 MD와 티바나 티, 최고의 리저브 커피를 만나보세요.</dd>
				            				</dl>
				            			</div>
				            		</div>
				            	</li>
				            	<li class="menu-item">
				            		<h3 class="sub-menu-heading">
				            			<a href="#" class="menu-heading">RESPONSBILITY</a>
				            		</h3>
				            		<div class="sub-menu-box" style="display: none;">
				            			<ul class="sub-menu">
				            				<li>
				            					<h4>
				            						<a href="#">사회 공헌 캠페인 소개</a>
				            					</h4>
				            				</li>
				            			</ul>
				            			<div class="additional-menu-box">
				            				<dl class="additional-menu">
				            					<dt class="additional-menu-title">
				            						<a href="#">커피원두 재활용</a>
				            					</dt>
				            					<dd class="additional-menu-description">스타벅스 커피 원두를 재활용해 보세요.</dd>
				            				</dl>
				            			</div>
				            		</div>
				            	</li>
				            	<li class="menu-item">
				            		<h3 class="sub-menu-heading">
				            			<a href="#" class=menu-heading>MY STARBUCKS REWARDS</a>
				            		</h3>
				            		<div class="sub-menu-box" style="display:none;">
				            			<ul class="sub-menu">
				            				<li>
				            					<h4>
				            						<a href="#">마이 스타벅스 리워드</a>
				            					</h4>
				            					<ul>
				            						<li>
				            							<a href="#">마이 스타벅스 리워드 소개</a>
				            						</li>
				            						<li>
				            							<a href="#">등급 및 혜택</a>
				            						</li>
				            						<li>
				            							<a href="#">스타벅스 별</a>
				            						</li>
				            						<li>
				            							<a href="#">자주하는 질문</a>
				            						</li>
				            					</ul>
				            				</li>
				            				<li>
				            					<h4>
				            						<a href="#">스타벅스 카드</a>
				            					</h4>
				            					<ul></ul>
				            				</li>
				            				<li>
				            					<h4>
				            						<a href="#">스타벅스 e-Gift Card</a>
				            					</h4>
				            					<ul>
				            						<li>
				            							<a href="#">스타벅스 e-Gift Cart 소개</a>
				            						</li>
				            					</ul>
				            				</li>
				            			</ul>
				            			<div class="additional-menu-box">
				            				<dl class="additional-menu">
				            					<dt class="additional-menu-title">
				            						<a href="#">스타벅스 카드 등록하기</a>
				            					</dt>
				            					<dd class="additional-menu-description">카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</dd>
				            				</dl>
				            			</div>
				            		</div>
				            	</li>
				            	<li class="menu-item">
				            		<h3 class="sub-menu-heading">
				            			<a href="#" class="menu-heading">WHATS NEW</a>
				            		</h3>
				            		<div class="sub-menu-box" style="display:none;">
				            			<ul class="sub-menu">
				            				<li>
				            					<h4>
				            						<a href="#">프로모션&이벤트</a>
				            					</h4>
				            					<ul>
				            						<li>
				            							<a href="#">전체</a>
				            						</li>
				            						<li>
				            							<a href="#">스타벅스 카드</a>
				            						</li>
				            						<li>
				            							<a href="#">마이 스타벅스 리워드</a>
				            						</li>
				            						<li>
				            							<a href="#">온라인</a>
				            						</li>
				            					</ul>
				            				</li>
				            			</ul>
				            			<div class="additional-menu-box">
				            				<dl class="additional-menu">
				            					<dt class="additional-menu-title">
				            						<a href="#">매장별 이벤트</a>
				            					</dt>
				            					<dd class="additional-menu-description">스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</dd>
				            					<dt class="additional-menu-title">
				            						<a href="#">월페이퍼</a>
				            					</dt>
				            					<dd class="additional-menu-description">매월 업데이트되는 월페이퍼 (PC/Mobile)로 스타벅스를 더욱 가깝게 즐겨보세요!</dd>
				            				</dl>
				            			</div>
				            		</div>
				            	</li>
			            	</ul>
					</nav>
        	</header>
    	</div>
    	<!-- 메인 컨텐츠 -->
        <main>
             <div class="visual-background">
             	<section id="visual" class="visual">
             		<h2 class="a11y-hidden">새로운 음료 추천</h2>
                    <p class="visual__slogan">
                    	" stay "
                    	<span>chill.</span>
                    	" stay "
                    	<span>playful.</span>
                    </p>
                    <figure class="visual__summer-latte">
                    	<a href="#">
                    		<img src="resources/assets/img/visual_bev2.png" alt="블론드 서머 라떼">
                    	</a>
                    	<figcaption class="visual__detail">
                    		<span>
                    			"blonde summer latte"
                    			
                    		</span>
                    		<span>블론드 서머 라떼</span>
                    	</figcaption>
                    </figure>
                    <figure class="visual__grapefruit-lime">
                    	<a href="#">
                    		<img src="resources/assets/img/visual_bev1.png" alt="스위트 자몽과 라임 블렌디드">
                    	</a>
                    	<figcaption class="visual__detail">
                    		<span>
                    			"sweet grapefruit & lime blended"
                    			
                    		</span>
                    		<span>스위트 자몽&라임 블렌디드</span>
                    	</figcaption>
                    </figure>
                    <figure class="visual__melon">
                    	<a href="#">
                    		<img src="resources/assets/img/visual_bev3.png" alt="스위트 멜론 블렌디드">
                    	</a>
                    	<figcaption class="visual__detail">
                    		<span>
                    			"sweet melon blended"
                    			
                    		</span>
                    		<span>스위트 멜론 블렌디드</span>
                    	</figcaption>
                    </figure>
                    <a href="#" aria-labelledby="visual" class="visual__more-btn comp-btn">자세히 보기</a>
                    <div class="visual__pin">
                    	<a hred="#">
                    		<img src="resources/assets/img/event_banner.png" alt="나만의 스타벅스 홈카페 자세히보기">
                    	</a>
              		</div>
              </section>
             </div>
             <!--  공지사항과 프로모션 -->
             <div class="notice-n-promotion-backgound">
             	<div class="notice-n-promotion clearfix">
             		<section class="notice clearfix">
             			<h2 id="notice" class="notice-heading">공지사항</h2>
             			<div class="notice-viewer"></div>
             			<a href="#" class="notice-more-btn" aria-labelledby="notice"></a>
             		</section>
             		<section class="promotion clearfix"></section>
             	</div>
             </div>
             <!-- 리워드 -->
             <div class="rewards-background">
             	<section class="rewards">
             		<div class="rewards-left-box">
             			<h2 id="rewards" class="rewards-heading">
             				<span>MY STARBUCKS</span>
             				REWARDS
             			</h2>
             		</div>
             		<div class="rewards-right-box">
             			<p class="rewards-title"></p>
             			<div class="member-box clearfix">
             				<div class="member-left-box">
             					<p>
             						<span>스타벅스 회원이세요?</span>
             						로그인을 통해 나만의 리워드를 확인해 보세요
             					</p>
             					<p>
             						<span>스타벅스 회원이 아니세요?</span>
             						가입을 통해 리워드 혜택을 즐기세요. 
             					</p>
             				</div>
             				<div class="member-right-box">
             					<a href="/join">회원가입</a>
             					<a href="	/login">로그인</a>
             				</div>
             			</div>
             			<div class="gift-box" clearfix></div>
             		</div>
             	</section>
             </div>
             <!-- 르완다 -->
             <div class="rwanda-background">
             	<section class="rwanda clearfix">
             		<h2 id="rwanda" class="a11y-hidden">르완다 커피 소개</h2>
             		<img src="resources/assets/img/rwanda_bean.png" alt="르완다 블론드 로트스">
             		<dl class="rwanda__text">
             			<dt>"키 라임의 섬세한 산미로 시작하여 꿀과 같은 달콤함으로 마무리 되는 "
              					<span>르완다 블론드 로스트</span>
              			</dt>
             			<dd>"비옥한 화산 토양, 높은 고도, 풍부한 강우량으로
             					<br>
             					"이상적인 풍미를 자랑하는 르완다 블론드 로스트를 즐겨보세요."
             					<br>
             					"시럽과 같은 부드러운 바디감을 갖고 있어 아이스 커피로도 좋습니다."
             			</dd>
             		</dl>
             		<a href="#" class="rwanda_more-btn comp-btn" aria-labelledby="rwanda">자세히 보기</a>
             	</section>
             </div>
             <!-- 자메이카 -->
             <div class="reserve-bean-box">
             	<section class="reserve-bean">
             		<h2 id="jamaica" class="a11y-hidden">자메이카블루마운틴 소개</h2>
             		<p class="reserve-bean__title">
             			<span>NEW ARRIVAL</span>
             			<span>Jamaica</span>
             			<span>Blue Mountain</span>
             			<span>자메이카블루마운틴</span>
             		</p>
             		<ul class="reserve-bean__info">
             			<li>
             				"이미지는 연출된 것으로, 이미지 내 MD 상품은 실제 판매되지 않습니다. "
             			</li>
             			<li>
             				"해당 음료와 원두는 리저브 매장에서만 판매됩니다. "
             			</li>
             		</ul>
             		<a href="#" class="reserve-bean__more-btn comp-btn" aria-labelledby="jamaica">자세히 보기</a>
             	</section>
             </div>
             <!-- 페이보릿 -->
             <div class="favorite-background">
             	<section class="favorite">
             		<h2 class="a11y-hidden" id="favorite">자신의 음료 찾기</h2>
             		<div class="favorite-text">
             			<p class="favorite-title">
             				<span>PICK</span>
             				<span>YOUR</span>
             				<span>FAVORITE</span>
             			</p>
             			<p class="favorite-sub-title">
             				<span>다양한 메뉴</span>
             				"를"
             				<br>
             				<span>스타벅스</span>
             				"에서&nbsp;즐겨보세요 ."
             			</p>
             			<p class="favorite-description">
             				<span>스타벅스만의 특별함을 경험할 수 있는 최상의 선택 음료</span>
             				<span>스타벅스 커피와 완벽한어울림을 자랑하는 푸드</span>
             				<span>다양한 시도와 디자인으로 가치를 더하는 상품</span>
             				<span>소중한 사람에게 마음을 전하는 가장 좋은 방법 스타벅스 카드</span>
             			</p>
             			<a href="#" class="favorite-more-btn aria-labelledby="favorite">자세히 보기</a>
             		</div>
             	</section>
             </div>
        
        	<!-- 매거진 -->
        	<div class="magazine">
        		<section class="magazine-box">
        			<h2 id="magazine" class="a11y-hidden">메거진</h2>
        			<p class="magazine-text">
        				<span>
        				"reserve magazine"
        				</span>
        				<span>리저브가 선사하는 특별한 경험을 온라인 매거진으로 만나보세요.</span>
        			</p>
        			<a href="#" class="magazine-link" aria-labelledby="magazine">explore our story</a>
        		</section>
        	</div>
        	<!-- 스토어 -->
        	<div class="store-backgroud">
        		<section class="store">
        			<h2 class="a11y-hidden" id="store">store</h2>
        			<div class="store-text">
        				<p class="store-title">스타벅스를 가까이에서 경험해보세요.</p>
        				<p class="store-sub-title">고객님과 가장 가까이 있는 매장을 찾아보세요 !</p>
        				<div class="store-description">
       						<p>
       						" 차별화된 커피 경험을 누릴 수 있는"
       						<span>리저브TM 매장</span>
       						</p>
       						<p>
       						" 다양한 방법으로 편리하게 즐길 수 있는"
       						<span>드라이브 스루 매장</span>
       						</p>
       						<p>
       						" 함께해서 더 따뜻할 수 있는 지역 사회 소통 공간"
       						<span>커뮤니티 매장</span>
       						</p>
       						<p></p>
        				</div>
        				<a href="#" class="store-search-btn" aria-labelledby="store">매장 찾기</a>
        			</div>
        		</section>
        	</div>
        </main>
		<!-- 푸터 -->
			<div class="footer-background">
				<h2 class="a11y-hidden" id="store">footer</h2>
				<footer class="footer">
					<ul class="footer-list"></ul>
					<div class="aside-wrap"></div>
					<ul class="corp"></ul>
					<ul class="info"></ul>
					<address class="address"></address>
					<small class="copyright">@ Starbucks Coffee Company</small>
				</footer>
			</div>
		 </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/menuHoverHandler.js"></script>
      
    </body>
</html>
