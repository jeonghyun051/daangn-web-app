<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="http://localhost:8080/resources/css/detail.css" />

<%@ include file="../layout/header.jsp"%>

<section class="article-img"">

	<img class="detail-img" src="${post.imgsrc}" alt="First slide">

</section>

<section id="article-profile">
	<a id="article-profile-link" href="#">
		<h3 class="hide">프로필</h3>
		<div class="space-between">
			<div>
				<div id="article-profile-image">
					<img alt="눈누"
						src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_80-7e50c459a71e0e88c474406a45bbbdce8a3bf2ed4f2efcae59a064e39ea9ff30.png">
				</div>
				<div id="article-profile-left">
					<div id="nickname">${post.user.username}</div>
					<div id="region-name">${post.user.address}</div>
				</div>
			</div>
			<div id="article-profile-right">
				<dl id="temperature-wrap">
					<dt>매너온도</dt>
					<dd class="text-color-04 ">
						36.5 <span>°C<span> </span></span>
					</dd>
				</dl>
				<div class="meters">
					<div class=" bar bar-color-04" style="width: 38%;"></div>
				</div>
				<div class=" face face-0"></div>
			</div>
		</div>
	</a>
</section>

<section id="article-description">
	<h1 property="schema:name" id="article-title" style="margin-top: 0px;">${post.title}</h1>
	<p id="article-category">
		디지털/가전 ∙
		<time><fmt:formatDate value="${post.createDate}" pattern="yyyy.MM.dd"/></time>
	</p>
	<p property="schema:priceValidUntil" datatype="xsd:date" content="2023-03-18"></p>
	<p rel="schema:url" resource="https://www.daangn.com/208257028"></p>
	<p property="schema:priceCurrency" content="KRW"></p>
	<p id="article-price" property="schema:price" content="30000.0" style="font-size: 18px; font-weight: bold;"><fmt:formatNumber value="${post.price}" pattern="#,###"/>원</p>
	<div property="schema:description" id="article-detail">
		<p>${post.content}</p>
	</div>
	<p id="article-counts">채팅 0 ∙ 관심 ${post.favorite} ∙ 조회 0</p>
</section>

<section id="article-detail-hot-more">
	<h3>당근마켓 인기중고</h3>
	<div id="hot-more-link">
		<a href="/post/hot">더 구경하기</a>
	</div>
	<section class="cards-wrap">
	<c:forEach var="posts" items="${posts}">
		<article class="card ">
			<a class="card-link ga-click" data-event-label="208530505" data-event-category="show_article_from"
				data-event-action="hot_region" href="http://localhost:8080/post/${posts.id}">
				<div class="card-photo ">
					<img alt="포트메리온 와인잔 판매합니다"
						src="${posts.imgsrc}">
				</div>
				<div class="card-desc">
					<h2 class="card-title">${posts.title}</h2>
					<div class="card-price "><fmt:formatNumber value="${posts.price}" pattern="#,###"/>원</div>
					<div class="card-region-name">${posts.user.address}</div>
					<div class="card-counts">
						<span> 관심 ${posts.favorite} </span> ∙ <span> 채팅 0 </span>
					</div>
				</div>
			</a>
		</article>
		</c:forEach>
	</section>
</section>


<%@ include file="../layout/footer.jsp"%>
