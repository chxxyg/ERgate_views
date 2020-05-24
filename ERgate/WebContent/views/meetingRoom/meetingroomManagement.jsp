<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../common/menubar.jsp" />
<!-- 모달 사용페이지에 복사해주세요 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 모달 사용페이지에 복사해주세요 -->

<style>
.outer {
	padding-left: 320px;
	float: left;
	width: 100%;
	min-height: 100%;
	background-color: rgba(224, 224, 224, 0.12);
}

.topBar {
	background-color: rgba(22, 160, 133, 0.39);
	width: 100%;
	height: 50px;
	color: white;
	font-size: 25px;
	box-sizing: border-box;
	padding-top: 10px;
	padding-left: 30px;
	font-weight: 500;
}

.contentArea {
	margin-top: 50px;
	width: 1200px;
	height: 800px;
	float: left;
}

.subMenuArea {
	background-color: white;
	width: 100%;
	height: 70px;
}

#subMenuList {
	margin: 0;
	list-style: none;
	padding-left: 0;
}

#subMenuList li {
	margin-top: 10px;
	margin-left: 20px;
	float: left;
	text-decoration-style: none;
}

.subBtn {
	border: 0;
	width: 160px;
	height: 50px;
	font-size: 19px;
	color: rgb(127, 127, 127);
	background-color: white;
	border-radius: 25px;
}

.subBtn:hover {
	cursor: pointer;
}
/* 서브메뉴바 메뉴버튼(기본) */
/* 서브메뉴바 메뉴버튼(현재페이지일때) */
.subActive {
	border: 4px solid rgb(26, 188, 156);
}

/* 모달팝업 스타일 */
.modal {
	width: 1000px;
	max-width: 2000px;
	height: 800px; /* 모달 크기지정 */
	padding: 0px;
	border-radius: 0px;
}

.modal-title {
	margin: 0;
	width: 100%;
	height: 50px;
	background-color: rgba(22, 160, 133, 0.68);
	font-size: 25px;
	padding: 10px;
	color: white;
	box-sizing: border-box;
}

.modal-content {
	padding: 20px;
}

/* 모달팝업 스타일 */
.reservation_list>li {
	width: 400px;
	height: 210px;
	margin-bottom: 15px;
	margin-left: 15px;
	border: 1px solid #f1f1f1;
	float: left;
}

.reservation_list>li .name {
	margin-left: 85px;
	margin-top: 30px;
	font-size: 13px;
	font-weight: bolder;
	color: black;
	width: 200px;
	height: 10px;
}

.reservation_list>li .location {
	margin-left: 100px;
	margin-top: -10px;
	width: 200px;
	height: 10px;
	color: black;
	font-size: 13px;
	font-weight: bolder;
}

.reservation_list>li .personnel {
	margin-left: 85px;
	margin-top: -10px;
	width: 200px;
	height: 10px;
	color: black;
	font-size: 13px;
	font-weight: bolder;
}

.reservation_list>li .date {
	margin-left: 75px;
	margin-top: -10px;
	font-size: 13px;
	color: black;
	width: 200px;
	height: 10px;
	font-weight: bolder;
}

.reservation_list>li {
	display: inline;
	border: 1px solid lightgray;
	text-align: center;
}

.correctbtn {
	display: flex;
	width: 100%;
	text-align: center;
}

.reservation_list>li .correctbtn button {
	width: 140px;
	height: 30px;
	font-size: 13px;
	background-color: white;
	color: gray;
	border: 1px solid;
	border-radius: 5px;
	margin-left: 200px;
	margin-top: 20px;
}

/* 회의실 이미지*/
.meetingroomImg {
	width: 130px;
	height: 130px;
	float: left;
}

.profile {
	width: 130px;
	height: 130px;
	object-fit: cover;
	border-radius: 70%;
	float: left;
	overflow: hidden;
	margin-top: 30px;
	margin-left: 10px;
}
/* 페이징바 스타일 */
.pagingBar {
	list-style: none;
	margin-left: 300px;
	margin-top: 600px;
}

.pagingBar li {
	float: left;
}

.pagingBar li * {
	float: left;
	padding: 4px;
	margin-right: 3px;
	width: 20px;
	color: rgb(190, 190, 190);
	font: bold 12px tahoma;
	border: 1px solid rgb(190, 190, 190);
	text-align: center;
	text-decoration: none;
	font-size: 15px;
}

.pagingBar li>span {
	color: rgb(26, 188, 156);
	border: 1px solid rgb(26, 188, 156);
}

.pagingBar li a:hover {
	color: rgb(26, 188, 156);
	border: 1px solid rgb(26, 188, 156);
}

/* 페이징바 스타일 */
</style>
</head>
<body>
	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>회의실</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn">회의실 예약</button></li>
				<li><button class="subBtn" onclick="">회의실 예약현황</button></li>
				<li><button class="subBtn subActive" onclick="open_modal();">회의실
						관리</button></li>
				<a id="meetingroomManage" class="open-modal"
					href="#meetingroomManage" style="display: none;">모달</a>
			</ul>
		</div>

		<div class="contentArea">
			<ul class="reservation_list room">

				<li>
					<div class="meetingroomImg">
						<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
					</div>

					<p class="name">회의실 명</p>
					<br>
					<p class="location">회의실 위치</p>
					<br>
					<p class="personnel">수용인원</p>
					<br>
					<p class="date">등록일</p>
					<div class="correctbtn">
						<button>수정</button>
					</div>
				</li>
				<li>
					<div class="meetingroomImg">
						<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
					</div>

					<p class="name">회의실 명</p>
					<br>
					<p class="location">회의실 위치</p>
					<br>
					<p class="personnel">수용인원</p>
					<br>
					<p class="date">등록일</p>
					<div class="correctbtn">
						<button>수정</button>
					</div>
				</li>
				<li>
					<div class="meetingroomImg">
						<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
					</div>

					<p class="name">회의실 명</p>
					<br>
					<p class="location">회의실 위치</p>
					<br>
					<p class="personnel">수용인원</p>
					<br>
					<p class="date">등록일</p>
					<div class="correctbtn">
						<button>수정</button>
					</div>
				</li>
				<li>
					<div class="meetingroomImg">
						<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
					</div>

					<p class="name">회의실 명</p>
					<br>
					<p class="location">회의실 위치</p>
					<br>
					<p class="personnel">수용인원</p>
					<br>
					<p class="date">등록일</p>
					<div class="correctbtn">
						<button>수정</button>
					</div>
				</li>

			</ul>
			
			<!-- 페이징바 -->
		<ul class="pagingBar">
			<li><a href="#">&lt;&lt;</a></li>
			<li><a href="#">&lt;</a></li>
			<li><span>1</span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">&gt;</a></li>
			<li><a href="#">&gt;&gt;</a></li>
		</ul>
		<!-- 페이징바 -->
		</div>

		


		<!-- 모달팝업 (head부분에 링크들도 복사해주셔야합니다)
	 모달 사용시엔 메뉴바를 head맨 윗부분에 include해주셔야 합니다.
-->

		<!-- 모달 타겟. href의 #xxx와 모달영역의 id(xxx)가 한셋트입니다.
     용도에 따라 href와 id는 변경해주세요.(여러개 가능)
     모달타겟으로 쓸 요소에 class와 href 복사해주세요.
-->
		<a class="open-modal" href="#modal-form">모달열기</a> <br>


		<div id="meetingroomManage" class="modal">
			<div class="modal-title">모달타이틀</div>
			<div class="modal-content">모달내용작성해주세요</div>
		</div>

		<!-- 모달용 스크립트 -->
		<script>
			$('.open-modal').click(function() {
				$(this).modal({
					fadeDuration : 150
				});

			});
		</script>


	</div>




</body>
</html>