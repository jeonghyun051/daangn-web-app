<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<link rel="stylesheet"
	href="http://localhost:8080/resources/css/hot.css" />

<%@ include file="../layout/header.jsp"%>

<section class="home-main-section background-gray" style="background-color:white">
	<div class="home-hot-content">
		<h1 class="home-main-title text-center home-hot-title"
			style="font-size: 32px">${key} 중고거래 인기매물</h1>
		<nav id="hot-articles-navigation">

			<c:set var="location" value="지역을 선택하세요." />
			<c:if test="${key eq '서울'}">
				<c:set var="location" value="서울특별시" />
			</c:if>

			<c:if test="${key eq '부산'}">
				<c:set var="location" value="부산광역시" />
			</c:if>

			<c:if test="${key eq '대구'}">
				<c:set var="location" value="대구광역시" />
			</c:if>

			<c:if test="${key eq '인천'}">
				<c:set var="location" value="인천광역시" />
			</c:if>

			<c:if test="${key eq '광주'}">
				<c:set var="location" value="광주광역시" />
			</c:if>


			<select id="dom" onchange="abc()" class="hot-articles-nav-select">
				<option value=''>${location}</option>
				<option value='서울'>서울특별시</option>
				<option value='부산'>부산광역시</option>
				<option value='대구'>대구광역시</option>
				<option value='인천'>인천광역시</option>
				<option value='광주'>광주광역시</option>
			</select>

			<c:choose>
				<c:when test="${key eq '서울' }">
					<select id="dom2" onchange="abc2()" class="hot-articles-nav-select">
						<option value=''>동네를 선택하세요.</option>
						<option value='강동'>강동</option>
						<option value='강서'>강서</option>
						<option value='강남'>강남</option>
						<option value='강북'>강북</option>
						<option value='중구'>중구</option>
					</select>
				</c:when>

				<c:when test="${key eq '부산' }">
					<select id="dom2" onchange="abc2()" class="hot-articles-nav-select">
						<option value=''>동네를 선택하세요.</option>
						<option value='사상구'>사상구</option>
						<option value='사하구'>사하구</option>
						<option value='북구'>북구</option>
						<option value='진구'>진구</option>
						<option value='해운대구'>해운대구</option>
					</select>
				</c:when>

				<c:when test="${key eq '대구' }">
					<select id="dom2" onchange="abc2()" class="hot-articles-nav-select">
						<option value=''>동네를 선택하세요.</option>
						<option value='남구'>남구</option>
						<option value='달서구'>달서구</option>
						<option value='달성군'>달성군</option>
						<option value='동구'>동구</option>
						<option value='북구'>북구</option>
					</select>
				</c:when>
				
				<c:when test="${key eq '인천' }">
					<select id="dom2" onchange="abc2()" class="hot-articles-nav-select">
						<option value=''>동네를 선택하세요.</option>
						<option value='부평구'>부평구</option>
						<option value='계양구'>계양구</option>
						<option value='남동구'>남동구</option>
						<option value='동구'>동구</option>
						<option value='서구'>서구</option>
					</select>
				</c:when>
				
				<c:when test="${key eq '광주' }">
					<select id="dom2" onchange="abc2()" class="hot-articles-nav-select">
						<option value=''>동네를 선택하세요.</option>
						<option value='광산구'>광산구</option>
						<option value='남구'>남구</option>
						<option value='동구'>동구</option>
						<option value='북구'>북구</option>
						<option value='서구'>서구</option>
					</select>
				</c:when>
			</c:choose>

		</nav>
		<div class="cards-wrap">
			<c:forEach var="post" items="${posts}">
				<article class="card-top ">
					<a class="card-link " data-event-label="207589348"
						href="http://localhost:8080/post/${post.id}">
						<div class="card-photo ">
							<img alt="${post.title}" src="${post.imgsrc}">
						</div>
						<div class="card-desc">
							<h2 class="card-title">${post.title }</h2>
							<div class="card-price "><fmt:formatNumber value="${post.price}" pattern="#,###"/>원</div>
							<div class="card-region-name">${post.user.address}</div>
							<div class="card-counts">
								<span> 관심 ${post.favorite} </span> ∙ <span> 채팅 0 </span>
							</div>
						</div>
					</a>
				</article>
			</c:forEach>
		</div>
	</div>
</section>
<section id="hot-articles-go-download">
	<h3>${key} 마켓을 더 구경하고 싶나요?</h3>
	<p>당근마켓 앱에서 따뜻한 거래를 직접 경험해보세요!</p>
	<div id="hot-articles-download-buttons">
		<a target="_blank" class="download-button"
			href="https://itunes.apple.com/kr/app/pangyojangteo/id1018769995?l=ko&amp;ls=1&amp;mt=8">
			<div class="home-apple-store-bar-white"></div>
			<div class="download-text">App Store</div>
		</a> <a target="_blank" class="download-button"
			href="https://play.google.com/store/apps/details?id=com.towneers.www">
			<div class="home-google-play-bar-white"></div>
			<div class="download-text">Google Play</div>
		</a>
	</div>
</section>

<script>
function abc(){
console.log(dom.options[dom.selectedIndex].value);
var data =  dom.options[dom.selectedIndex].value;
console.log(data);

$.ajax({

url : "/post/option?key="+data
		
}).done((res) => {
console.log("지역은" + res);
location.href = "/post/option2?key="+res;
});
}


function abc2(){
console.log(dom2.options[dom2.selectedIndex].value);
var data =  dom2.options[dom2.selectedIndex].value;
console.log(data);

$.ajax({

url : "/post/option?key="+data
					
}).done((res) => {
console.log("지역은" + res);
location.href = "/post/option2?key="+res;
});
}
</script>

<%@ include file="../layout/footer.jsp"%>
