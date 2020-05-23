<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
/* ==========페이지영역========== */
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

/* 서브메뉴바 영역 */
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
/* 서브메뉴바 영역 */

/* 서브메뉴바 메뉴버튼(기본) */
.subBtn {
	border: 0;
	width: 150px;
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
/* 서브메뉴바 메뉴버튼(현재페이지일때) */

/* 콘텐츠영역 */
.contentArea {
	margin-top: 50px;
	margin-left: 100px;
	width: 1600px;
	height: auto;
	float: left;
}
/* 콘텐츠영역 */

/* ==========페이지영역========== */

/* 큰버튼 스타일 */
.bigBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
	margin-right: 5px;
}

.bigBtn:hover {
	cursor: pointer;
}
/* 큰버튼 스타일 */
#btnArea {
	margin-left: 910px;
}

/* 테이블스타일 */
#signInfo1 {
	width: 1200px;
	height: 100px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}

#signInfo1 th {
	background-color: #EAEAEA;
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo1 td {
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo2 {
	width: 1200px;
	height:160px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}

#signInfo2 th {
	background-color: #EAEAEA;
	border: 1px solid lightgray;
	height: 35px;
}

#signInfo2 td {
	border: 1px solid lightgray;
	position: relative;
}

.circle {
	color: rgb(231, 76, 60);
	font-size: 80px;
	display: inline-block;
	position: relative;
	bottom: 120px;
	opacity: 70%;
}

h2, h3 {
	margin: 0;
	padding: 0;
}

#checkArea{
	width: 1200px;
	border-width: 1px 0;
	border-collapse: collapse;
	text-align: center;
	font-size: 16px;
}
</style>
</head>
<body>
	<!-- 이곳에 메뉴바 include -->
	<jsp:include page="../common/menubar.jsp" />
	<!-- 이곳에 메뉴바 include -->

	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>전자결재</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn">결재대기함</button></li>
				<li><button class="subBtn">진행결재함</button></li>
				<li><button class="subBtn subActive">상신내역</button></li>
				<li><button class="subBtn">지출결의내역</button></li>
				<li><button class="subBtn">외근&휴가내역</button></li>
			</ul>
		</div>
		<div class="contentArea">
			<!-- 내용 작성 영역 입니다-->
			<h1>지출결의서</h1>
			<div id="btnArea">
				<button class="bigBtn" style="background: rgb(190, 190, 190);">임시저장</button>
				<button class="bigBtn">기안등록</button>
			</div>
			<br>
			<form action="" method="post">
				<table id="signInfo1">
					<tr>
						<th>기안부서</th>
						<td width="400">인사부</td>
						<th>문서분류</th>
						<td width="400">지출결의서</td>
					</tr>
					<tr>
						<th>기안자</th>
						<td>김기철</td>
						<th>문서번호</th>
						<td>00000</td>
					</tr>
					<tr>
						<th>기안일시</th>
						<td>2020/05/10</td>
						<th>지출기간</th>
						<td><input name="" type="date"> ~ <input name=""
							type="date"></td>
					</tr>
				</table>
				<br>
				<table id="signInfo2">
					<tr>
						<th rowspan="2" width="120">결재라인</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
						<th>팀장</th>
					</tr>
					<tr>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
						<td width="150"><h2>1</h2>
							<h3>전지현</h3></td>
					</tr>
					<tr>
						<th>수신참조</th>
						<td colspan="6"></td>
					</tr>
				</table>
				<table id="checkArea">
					<tr>
						<th width="120"></th>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
						<td width="150"><span class="material-icons circle">
								panorama_fish_eye </span></td>
					</tr>
				</table>

			</form>
		</div>
	</div>
</body>
</html>