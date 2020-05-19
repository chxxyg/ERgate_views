<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
.reservationBtn{
	width:160px;
	height:50px;
	background-color:rgb(26, 188, 156);
	text-align:center;
	font-size:25px;
	color:white;
	margin-left:10px;
	outline:none;
	border-radius:10px;
	border:0px;
	margin-top:10px;
}
/* 나의 예약 버튼*/
.myReservationBtn{
	margin-left:1050px;
	width:160px;
	height:50px;
	background-color:rgb(26, 188, 156);
	text-align:center;
	font-size:25px;
	color:white;
	outline:none;
	border-radius:10px;
	border:0px;
	margin-top:10px;
}
.myReservationBtn a{
	text-decoration:none;
	color:white;
}

</style>
</head>
<body>

	<!-- 메뉴바 -->
	<jsp:include page="../common/menubar.jsp"/>
	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>회의실</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn subActive">회의실 예약현황</button></li>
			</ul>
		</div>
		<div class="contentArea">
	
			<button class="reservationBtn">예약하기</button>
			<button class="myReservationBtn"><a href="">나의 예약</a></button>
		</div>
		
		<!-- 캘린더 api 쓸거임 -->
		


	</div>
</body>
</html>