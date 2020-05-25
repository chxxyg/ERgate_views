<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signApprovalPath</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

html, body {
	margin: 0;
	height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	font-family: "Nanum Gothic", serif;
	overflow-x: hidden;
}

/* 현재팝업창 사이즈조절 */
.popup-outer {
	width: 1250px;
	height: 860px;
	margin: 0;
	box-sizing: border-box;
}

.popup-title {
	margin: 0;
	width: 100%;
	height: 50px;
	background-color: rgba(22, 160, 133, 0.68);
	font-size: 25px;
	padding: 10px;
	color: white;
	box-sizing: border-box;
}

.popup-content {
	padding: 20px;
}

/* 검색창 스타일 */
.searchBar{margin-left:15px;}
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

div{
	border:1px solid red;
	box-sizing:border-box;
}

/* 전체영역틀 */
#wrap{
	margin-top:20px;
	margin-left:15px;
	width:1200px;
	height:700px;	
}
#wrap>div{float:left;margin-right:18px;}

/* 좌측 조직도영역 */
#groupArea{
	height:100%;
	width:380px;
}

/* 중앙 리스트영역 */
#listArea{
	height:100%;
	width:380px;	
}
/* 우측 선택영역 */
#selectArea{
	height:100%;
	width:380px;
}

</style>
</head>
<body>


	<div class="popup-outer">
		<div class="popup-title">결재라인 설정</div>
		<div class="popup-content">
			<!-- 검색바 -->
			<div class="searchBar">
				<select name="">
					<option>이름</option>
					<option>직급</option>
					<option>직책</option>
					<option>부서</option>
				</select> <input type="text" placeholder="이름/직급/직책/부서 검색">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
					fill="black" width="48px" height="48px">
									<path
						d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z" />
									<path d="M0 0h24v24H0z" fill="none" /></svg>
			</div>
			
			<div id="wrap">
				<!-- 좌측 조직도영역 -->
				<div id="groupArea">
				</div>
				
				<!-- 중앙 리스트영역 -->
				<div id="listArea">
				</div>
				
				<!-- 우측 선택영역 -->
				<div id="selectArea">
					<div id="signArea">
					</div>
					<div id="refArea">
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- 팝업창 자동 사이즈맞춤용 스크립트 -->
	<script>
		$(document)
				.ready(
						function() {
							// 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수.
							var strWidth;
							var strHeight;

							//innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저
							if (window.innerWidth && window.innerHeight
									&& window.outerWidth && window.outerHeight) {
								strWidth = $(".popup-outer").outerWidth()
										+ (window.outerWidth - window.innerWidth);
								strHeight = $(".popup-outer").outerHeight()
										+ (window.outerHeight - window.innerHeight);
							} else {
								var strDocumentWidth = $(document).outerWidth();
								var strDocumentHeight = $(document)
										.outerHeight();

								window.resizeTo(strDocumentWidth,
										strDocumentHeight);

								var strMenuWidth = strDocumentWidth
										- $(window).width();
								var strMenuHeight = strDocumentHeight
										- $(window).height();

								strWidth = $(".popup-outer").outerWidth()
										+ strMenuWidth;
								strHeight = $(".popup-outer").outerHeight()
										+ strMenuHeight;
							}

							//resize
							window.resizeTo(strWidth, strHeight);
						});
	</script>

</body>
</html>