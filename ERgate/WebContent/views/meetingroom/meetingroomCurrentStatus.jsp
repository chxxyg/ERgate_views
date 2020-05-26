<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 이 부분  -->
<jsp:include page="../common/menubar.jsp" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

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

/* 콘텐츠영역 */
.contentArea {
	margin-top: 50px;
	margin-left: 100px;
	width: 1600px;
	height: auto;
	float: left;
}
/* 콘텐츠영역 */

/* 예약하기 버튼 */
.reservationBtn {
	width: 160px;
	height: 50px;
	background-color: rgb(26, 188, 156);
	text-align: center;
	font-size: 25px;
	color: white;
	margin-left: 10px;
	outline: none;
	border-radius: 10px;
	border: 0px;
	margin-top: 10px;
}
/* 나의 예약 버튼*/
 #myReservationBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-left: 900px;
}
/* #myReservation {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-left: 900px;
}
 */
 #myReservationBtn:hover {
	cursor: pointer;
}


/* 예약 모달 */
.modal {
	max-width: 2000px;
	width: 1000px;
	height: 700px; /* 모달 크기지정 */
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

html, body {
	margin: 0;
	height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	font-family: "Nanum Gothic", serif;
	overflow-x: hidden;
}

.reservationContent {
	border: 1px solid black;
	width: 100%;
	height: 400px;
	margin-top: 10px;
}
/*select 옵션*/
.meetionroom {
	float: left;
}

/* inputs */
.inputs {
	width: 300px;
	height: 25px;
	border: 1px solid lightgray;
	border-radius: 3px;
}

.BigInput {
	width: 400px;
	height: 35px;
	border: 1px solid lightgray;
	border-radius: 3px;
	margin-left: 10px;
}

/* 예약하기 버튼*/
.btns {
	margin-left: 30%;
}

.reservationBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-left: 50px;
}

.reservationBtn:hover {
	cursor: pointer;
}

/*나의예약현황*/
#myReservation{
	width:140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-top: -33px;
	margin-left:1000px;
	float:left;
	text-decoration:none;
	
}


#myReservationBtn:hover {
	cursor: pointer;
}
a#myReservation{
	text-align:center;
}

/* 취소 버튼 */
.resetBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
}

.resetBtn:hover {
	cursor: pointer;
}

/* 가용회의실 검색 버튼*/
.searchBtn {
	width: 100px;
	height: 25px;
	border: 0px;
	border-radius: 5px;
	background: lightgray;
	color: white;
	font-size: 12px;
	float: left;
}

.searchBtn:hover {
	cursor: pointer;
}

#meetingroomBox {
	float: left;
	height: 20px;
}

/*콘텐트 내용*/
.reservationContent {
	border-collapse: collapse;
	border-bottom: 3px solid lightgray;
	border-top: 3px solid #dddd;
	border-left: none;
	border-right: none;
	font-size: 13px;
}

#r1 {
	width: 20%;
	text-align: center;
	border-bottom: 1px ridge lightgray;
	background-color: #eeee;
}

#r2 {
	width: 80%;
	padding: 20px;
	border-bottom: 1px solid lightgray;
}

#r3 {
	text-align: center;
	background-color: #eeee;
}

#r4 {
	width: 80%;
	padding: 20px;
}

/*모달 나의 예약현황 부분*/
.reservation_list>li {
	width: 400px;
	height: 210px;
	margin-bottom: 15px;
	margin-left: 15px;
	border: 1px solid #f1f1f1;
	float: left;
}

.reservation_list>li .name {
	margin-left: 180px;
	margin-top: 30px;
	font-size: 16px;
	font-weight: bolder;
	color: black;
	width: 150px;
	height: 10px;
}

.reservation_list>li .title {
	margin-left: 160px;
	margin-top: -10px;
	width: 150px;
	height: 10px;
	color: black;
}

.reservation_list>li .date {
	margin-left: 200px;
	margin-top: -10px;
	font-size: 14px;
	color: #999;
	width: 150px;
	height: 10px;
}

.reservation_list>li {
	display: inline;
	border: 1px solid lightgray;
	text-align: center;
}

.cancelbtn {
	display: flex;
	width: 100%;
	text-align: center;
}

.reservation_list>li .cancelbtn button {
	width: 140px;
	height: 30px;
	font-size: 13px;
	background-color: white;
	color: gray;
	border: 1px solid;
	border-radius: 5px;
	margin-left: 200px;
	margin-top: 30px;
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
/*페이징바*/
.pagingBar {
	list-style: none;
	margin-left: 300px;
    margin-top: 500px;
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
</style>
</head>
<body>

	<!-- 메뉴바 -->

	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>회의실</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn subActive">회의실 예약</button></li>
			</ul>
		</div>
		<div class="contentArea">

			<button class="reservationBtn" onclick="open_modal();">예약하기</button>
			<a id="open_reservation" class="open-modal" href="#reservation" style="display: none;">모달</a> <br> 
			<a class="open-modal" href="#myReservation_open_modal" id="myReservation">나의예약 </a>

		</div>

		<!-- 캘린더 api 쓸거임 -->


		<!-- 모달 내용(예약하기 부분) -->
		<div id="reservation" class="modal">
			<div class="modal-title">회의실 예약</div>
			<div class="modal-content">
				<table class="reservationContent">

					<tr>
						<td id="r1">신청자</td>
						<td id="r2">케빈과장</td>
					</tr>

					<tr>
						<td id="r1">사용기간</td>
						<td id="r2"><form name="" action="" method="post">
								<input type="date" value="">
							</form></td>
						<!-- <td><form name="" action="" method="post"><input type="date" value=""></form></td> -->
					</tr>

					<tr>
						<td id="r1">회의실</td>
						<td id="r2"><select name="meetingroom">
								<option selected>회의실 선택</option>
								<option value="5F 회의실1">5F 회의실1</option>
								<option value="5F 회의실">5F 회의실2</option>
								<option value="5F 회의실">5F 회의실3</option>
								<option value="6F 회의실">6F회의실</option>
						</select> <br>
							<button class="searchBtn">가용회의실 검색</button> <br> <input
							type="text" id="meetingroomBox" class="inputs"></td>
					</tr>

					<tr>
						<td id="r1">사용목적</td>
						<td id="r2"><input type="text" placeholder="내용을 입력하세요"
							class="inputs"></td>
					</tr>

					<tr>
						<td id="r1">참석자(내부)</td>
						<td id="r2"><button class="searchBtn">참석자 지정</button> <input
							type="text" class="BigInput"></td>
					</tr>

					<tr>
						<td id="r3">참석자(외부)</td>
						<td id="r4"><input type="text" class="inputs"></td>
					</tr>
				</table>
			</div>

			<br> <br>
			<!-- 예약/취소 버튼 -->
			<div class=btns>
				<button class="reservationBtn" type="submit">예약하기</button>
				<button class="resetBtn" type="reset">취소</button>
			</div>
		</div>


		<!-- 모달(나의 예약 현황) -->
		<div id="myReservation_open_modal" class="modal">
			<div class="modal-title">나의 예약현황</div>
			<div class="modal-content">



				<ul class="reservation_list room">

					<li>
						<div class="meetingroomImg">
							<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
						</div>

						<p class="name">5층 회의실2</p> <br>
						<p class="title">팀 미팅</p> <br>
						<p class="date">
							2020-05-10 10:00 ~ <br> 2020-05-10 12:00
						</p>
						<div class="cancelbtn">
							<button>예약 취소</button>
						</div>
					</li>
					<li>
						<div class="meetingroomImg">
							<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
						</div>
						<p class="name">회의실 장소1</p>
						<p class="title">내용</p>
						<p class="date">날짜</p>
						<div class="cancelbtn">
							<button>예약 취소</button>
						</div>
					</li>
					<li>
						<div class="meetingroomImg">
							<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
						</div>
						<p class="name">5층 회의실</p>
						<p class="title">팀 미팅</p>
						<p class="date">날짜</p>
						<div class="cancelbtn">
							<button>예약 취소</button>
						</div>
					</li>
					<li>
						<div class="meetingroomImg">
							<img class="profile" src="${ pageContext.servletContext.contextPath }/resources/siteImg/크기변환_KENN4462-1.jpg">
						</div>
						<p class="name">회의실 장소</p>
						<p class="title">내용</p>
						<p class="date">
							2020-05-10 10:00 ~ <br> 2020-05-10 12:00
						</p>
						<div class="cancelbtn">
							<button>예약 취소</button>
						</div>
					</li>




				</ul>

			</div>

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






	</div>

	<br>
	<br>
	</div>






	<!-- 모달용 스크립트 -->
	<script>
			$('.open-modal').click(function() {
				$(this).modal({
					fadeDuration : 150
				});

			});

			
			/* 예약하기 모달 여는 function */
			function open_modal() {
				$("#open_reservation").click();
			};
			
			
		
			
		
	
			
			
		</script>




	</div>
</body>
</html>