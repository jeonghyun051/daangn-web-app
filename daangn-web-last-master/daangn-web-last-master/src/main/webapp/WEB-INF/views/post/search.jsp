<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="http://localhost:8080/resources/css/search.css" />
<%@ include file="../layout/header.jsp"%>

<section id="result">
	<div class="result-container">
		<div class="articles-wrap">

			<p class="article-kind">인기중고</p>

			<c:forEach var="posts" items="${posts}">
				<article class="flea-market-article flat-card">
					<a class="flea-market-article-link" href="/post/${posts.id}">
						<div class="card-photo">
							<img alt="커블체어 와이더 (블랙) " src="${posts.imgsrc}">
						</div>
						<div class="article-info">
							<div class="article-title-content">
								<span class="article-title">${posts.title}</span> <span
									class="article-content">${posts.content} </span>
							</div>

							<p class="article-region-name">${posts.user.address}</p>
							<p class="article-price "><fmt:formatNumber value="${posts.price}" pattern="#,###"/>원</p>
							
							<section class="article-sub-info">
								<span class="article-watch"> <img class="watch-icon"
									alt="Watch count"
									src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg">
									${posts.favorite}
								</span>
							</section>
						</div>
					</a>
				</article>
			</c:forEach>
		</div>
	</div>
</section>




<%@ include file="../layout/footer.jsp"%>
