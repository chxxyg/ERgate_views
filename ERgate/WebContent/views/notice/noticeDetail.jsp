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

#noticeDetail{
	padding:20px;
	background:white;
	min-height:600px;
	width:1300px;
	height:auto;
}

/* 큰버튼 스타일 */
.bigBtn {
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background:rgb(190, 190, 190);
	color: white;
	font-size: 18px;
}

.bigBtn:hover {
	cursor: pointer;
}
/* 큰버튼 스타일 */

#btnArea{
	margin-left:350px;
}

.bottomArea{
padding:10px;
	width:1300px;
	height:60px;
	background:white;
}

.roundIcon{
width:20px;
height:20px;
	border-radius:50%;
	background:rgb(26, 188, 156);
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
			<span>공지</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn subActive">공지사항</button></li>
			</ul>
		</div>
		<div class="contentArea">
			<h4>공지사항 상세</h4>
			<div id="noticeDetail">
				<h3>공지사항 제목</h3>
				<h4>No.140 | 김관리 | 2020/05/01 | 120</h3>
				<hr>
				<br><br>
				공지사항내용
				
				<p align="bottom">첨부파일 : <a>첨부파일.jpg</a></p>
			</div>
			<br>
			<div id="btnArea">
				<button class="bigBtn" style="background:rgb(26, 188, 156);">목록</button>
				<button class="bigBtn">수정</button>
				<button class="bigBtn">삭제</button>			
			</div>
			<br>
			<div class="bottomArea">
				<div class="roundIcon">
					<span style="color:white;" class="material-icons">arrow_drop_up</span>		
				</div>
					<hr>
				<div class="roundIcon">
					<span style="color:white;" class="material-icons">arrow_drop_down</span>			
				</div>
			</div>
			<br><br><br>
		</div>
	</div>
</body>
</html>