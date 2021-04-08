<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>당근마켓</title>

<link rel="stylesheet" href="http://localhost:8080/resources/css/style.css" />
<link rel="stylesheet" href="http://localhost:8080/resources/css/footer.css" />
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<link rel="canonical" href="https://www.daangn.com/">
<script src="https://code.jquery.com/jquery-3.5.1.js"
	integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	crossorigin="anonymous"></script>


<!-- <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous"> -->
<title>당신 근처의 당근마켓</title>

<!--  <link rel="stylesheet" media="all"
	href="https://d1unjqcospf8gs.cloudfront.net/assets/home/home-ee455e0939f9335339ca56eafe8488cc61d39b6b612d2789e3814fcc895a8cfc.css"> -->

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700" rel="stylesheet">

<!--  숫자 포맷 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  부트스트랩 -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
 -->

<!-- <link rel="apple-touch-icon" sizes="192x192" href="/images/icons/daangn_logo_192.png"> -->

<!-- <meta name="csrf-param" content="authenticity_token"> -->
<!-- <meta name="csrf-token" content="NNJ7j2Ypk9Gd8nqr//MhCzRDQLS1w0Bwjn/xfOvsAje0hHRyD6cfZIaDgNKQa/O10gwj2aP/b5I50hpjzlDF1Q=="> -->


</head>
<body>
	<header id="fixed-bar" class="fixed-bar-box-shadow">
		<div id="fixed-bar-wrap">
			<h1 id="fixed-bar-logo-title">
				<a href="http://localhost:8080/"> <span class="sr-only">당근마켓</span> <img class="fixed-logo" alt="당근마켓"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/logo-basic-24b18257ac4ef693c02233bf21e9cb7ecbf43ebd8d5b40c24d99e14094a44c81.svg">
				</a>
			</h1>

			<section id="fixed-bar-search">
				<div class="search-input-wrap">
				<form action="/post/search" method="GET" style ="display:flex">
					<span class="sr-only">검색</span> <input type="text" name="search" id="header-search-input"
						class="fixed-search-input" placeholder="동네 이름, 물품명 등을 검색해보세요!">
					<button id="header-search-button">
						<img class="fixed-search-icon" alt="Search"
							src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/search-icon-7008edd4f9aaa32188f55e65258f1c1905d7a9d1a3ca2a07ae809b5535380f14.svg">
					</button>
					</form>
				</div>
			</section>

			<section id="fixed-bar-download">
				<h3 class="hide">다운로드</h3>
				<a target="_blank" class="fixed-download-button" id="header-download-button-ios"
					href="https://itunes.apple.com/kr/app/pangyojangteo/id1018769995?l=ko&amp;ls=1&amp;mt=8"> <img class="fixed-apple-store"
					alt="App Store"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/apple-store-3a664174124650d63cae365bc55586fc5ff27b822b1b97788fc4af77d73d00c8.svg">
					<div class="fixed-download-text">App Store</div>
				</a> <a target="_blank" class="fixed-download-button" id="header-download-button-android"
					href="https://play.google.com/store/apps/details?id=com.towneers.www"> <img class="fixed-google-play" alt="Google Play"
					src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/header/google-play-c9ad0fc573cd01e2b982df5de6709a3d8d7cec8d9b58a5c08db7da0b92a32a75.svg">
					<div class="fixed-download-text">Google Play</div>
				</a>
			</section>
		</div>
	</header>