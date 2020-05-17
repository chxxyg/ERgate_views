<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 받은메일함 페이지 -->
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* ==========페이지영역========== */
    .outer{
        padding-left: 320px;
        float: left;
        width: 100%;
        min-height: 100%;
        background-color: rgba(224, 224, 224, 0.12);
    }
    .topBar {
        background-color:rgba(22, 160, 133, 0.39);
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
    .subMenuArea{
        background-color: white;
        width: 100%;
        height: 70px;
    }
    #subMenuList{margin: 0;list-style:none;padding-left: 0;}
    #subMenuList li{
        margin-top: 10px;
        margin-left: 20px;
        float:left;
        text-decoration-style: none;
    }
    /* 서브메뉴바 영역 */

    /* 서브메뉴바 메뉴버튼(기본) */
    .subBtn{
        border:0;
        width:150px;
        height:50px;
        font-size: 19px;
        color:rgb(127, 127, 127);
        background-color: white;
        border-radius: 25px;
    }
    .subBtn:hover{cursor: pointer;}
    /* 서브메뉴바 메뉴버튼(기본) */
    /* 서브메뉴바 메뉴버튼(현재페이지일때) */
    .subActive{
        border:4px solid rgb(26, 188, 156);
    }
    /* 서브메뉴바 메뉴버튼(현재페이지일때) */

    /* 콘텐츠영역 */
    .contentArea {
        margin-top: 50px;
        margin-left:100px;
        width:1600px;
        height:auto;
        float:left;
    }
    /* 콘텐츠영역 */

/* ==========페이지영역========== */

/* 중간버튼 스타일 */
.middleBtn {
	width: 90px;
	height: 35px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 15px;
}

.middleBtn:hover {
	cursor: pointer;
}
/* 중간버튼 스타일 */
/* 검색창 스타일 */
.searchBar>select {
	height: 36px;
	width: 70px;
	border: 1px solid lightgray;
	border-radius: 3px;
	font-family: inherit;
	display: inline-block;
	vertical-align: top;
}

.searchBar>input {
	padding: 5px;
	width: 220px;
	height: 25px;
	border: 1px solid lightgray;
	border-radius: 3px;
}

.searchBar>svg {
	fill: rgb(26, 188, 156);
	width: 37px;
	display: inline-block;
	vertical-align: bottom;
	height: 100%;
}

.searchBar>svg:hover {
	cursor: pointer;
	opacity: 70%;
}
/* 검색창 스타일 */

.bas {
	width: 1400px;
	height: 50px;
}
#leftArea {
	text-align: left;
}
#rightArea {
	text-align: right;
}



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

/* 체크박스 모양 변경 */

input[id="cb1"] + label {
	display: inline-block;
	width: 20px;
	height: 20px;
	border: 2px solid rgb(26, 188, 156);
	cursor: pointer;
}

input[id="cb1"]:checked + label {
	background-color: rgb(26, 188, 156);
}

input[id="cb1"] {
	display: none;
}

</style>   
</head>
<body>
	<!-- 이곳에 메뉴바 include -->
	<jsp:include page="../common/menubar.jsp"/>
	<!-- 이곳에 메뉴바 include -->
	
	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>사내메일</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn subActive">받은메일함</button></li>
				<li><button class="subBtn">보낸메일함</button></li>
				<li><button class="subBtn">중요메일함</button></li>
				<li><button class="subBtn">메일작성</button></li>
			</ul>
		</div>
		<div class="contentArea">
			<!-- 내용 작성 영역 입니다-->
			<br>
			<!-- 버튼과 검색바 같이 들어가는 DIV -->
			<div btnAndSearch>
				<table class="bas">
					<tr>
						<td id="leftArea">
							<button class="middleBtn">답장</button>&nbsp;
							<button class="middleBtn" style="background:gray;">전달</button>&nbsp;
							<button class="middleBtn" style="background:rgb(190, 190, 190);">삭제</button>
						</td>
						<td id="rightArea">
							<!-- 검색바 -->
							<div class="searchBar">
								<select>
									<option>제목</option>
									<option>내용</option>
									<option>주소</option>
								</select> <input type="text">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									fill="black" width="48px" height="48px">
									<path
										d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" />
									<path d="M0 0h24v24H0z" fill="none" /></svg>
							</div>
							<!-- 검색바 -->
						</td>
					</tr>
				</table>
			</div>
			
			<div style="height:10px;"></div>
			<!-- 게시판 -->
			<table class="boardTable">
				<thead>
					<tr>
						<th width="50">
							    <input type="checkbox" id="cb1">
   							    <label for="cb1"></label>
   						</th>
						<th width="50">
							<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
								<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
								<path d="M0 0h24v24H0z" fill="none" />
							</svg>
						</th>
						<th width="150">계정</th>
						<th width="500">제목</th>
						<th width="100">받은날짜</th>
					</tr>
				</thead>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				<tr>
					<td>	
						<input type="checkbox" id="cb1">
   						<label for="cb1"></label>
   					</td>
					<td>
						<svg class="star_icons" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="black" width="25px" height="25px">
							<path d="M22 9.24l-7.19-.62L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21 12 17.27 18.18 21l-1.63-7.03L22 9.24zM12 15.4l-3.76 2.27 1-4.28-3.32-2.88 4.38-.38L12 6.1l1.71 4.04 4.38.38-3.32 2.88 1 4.28L12 15.4z" />
							<path d="M0 0h24v24H0z" fill="none" />
						</svg>
					</td>
					<td>케빈</td>
					<td>메일 제목입니다. 좀 말려주세요</td>
					<td>2020/05/10</td>
				</tr>
				
				
			</table>
			<!-- 게시판 -->
			
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









