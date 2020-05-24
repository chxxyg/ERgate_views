<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../common/menubar.jsp" />

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
	margin-left: 100px;
	width: 1600px;
	height: auto;
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
/* 게시판 스타일 */
.boardTable {
	width: 1400px;
	height: 400px;
}

.boardTable, .boardTable th, .boardTable td {
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}

.boardTable th {
	background-color: #999;
	color: #fff;
	height: 35px;
}

.boardTable td {
	border-color: lightgray;
	border-style: solid;
	height: 35px;
}

.boardTable tr:hover td {
	background-color: rgb(224, 224, 224);
	cursor: pointer;
}

/* 게시판 스타일 */

/* 페이징바 스타일 */
.pagingBar {
	list-style: none;
	margin-left: 400px;
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
				<li><button class="subBtn subActive">회의실 예약</button></li>
				<li><button class="subBtn subActive">회의실 예약현황</button></li>
				<li><button class="subBtn subActive">회의실 관리</button></li>
			</ul>
		</div>
		
		<div class="contentArea">
		<!-- 게시판 -->
		<table class="boardTable">
			<thead>
				<tr>
					<th>부서명</th>
					<th>예약자</th>
					<th>회의실</th>
					<th>사용목적</th>
					<th>사용기간</th>
				</tr>
			</thead>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>
			<tr>
				<td>인사팀</td>
				<td>앨리스</td>
				<td>5층 회의실1</td>
				<td>팀미팅</td>
				<td>2020-05-10 10:00 ~ 2020-05-10 10:00</td>
			</tr>

		</table>

		<!-- 페이징바 -->
		<ul class="pagingBar">
			<li><a href="#">&lt;&lt;</a></li>
			<li><a href="#">&lt;</a></li>
			<li><span>1</span></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">6</a></li>
			<li><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li><a href="#">10</a></li>
			<li><a href="#">&gt;</a></li>
			<li><a href="#">&gt;&gt;</a></li>
		</ul>
		<!-- 페이징바 -->

	</div>
	</div>




</body>
</html>