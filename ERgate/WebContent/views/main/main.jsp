<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
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
    
    /* main */
    #mainTable{
    	width: 1400px;
    	height: 700px;
    	margin-bottom: 50px;
    }
    #mainTable img{
    	width: 30px;
    	height: 30px;
    }
    
    #mainScheduleArea, #mainNoticeArea{
    	width: 900px;
    	height: 50%;
    }
    #mainMailArea, #mainSignArea{
    	width: 500px;
    	height: 50%;
    }
    #mainScheduleTable, #mainNoticeTable{
    	width: 95%;
    	height: 100%;
    }
    #mainMailTable, #mainSignTable{
    	width: 100%;
    	height: 100%;
    }
    
    .mainLabel{
    	font-size: 24px;
    	color: gray;
    	text-align: left;
    	font-weight: 500;
    	height: 50px;
    }
    .mainNextArea{
    	text-align: right;
    	padding-right: 10px;
    }
    .mainNextBtn{
    	border: none;
    	background: none;
    	margin-top: 10px;
    }
    .mainRadioBtn{
    	width: 15px;
    	height: 15px;
    }
    .mainRadioLabel{
    	font-size: 20px;
    }
    #mainScheduleRadio{
    	display: inline-block;
    	width: 250px;
    	text-align: left;
    	vertical-align: top;
    	padding-top: 15px;
    }
    #mainDateArea{
    	font-size: 20px;
    	color: rgb(26, 188, 156);
    	height: 40px;
    	font-weight: 550;
    }
    
    	
	#mainScheduleBoard, #mainNoticeBoard{
		width: 100%;
		height: 200px;
	}
	
	#mainMailDiv{
		width: 99%;
		height: 80px;
		background: rgb(240,240,240);
		border-radius: 5px;
		margin-left: 2px;
		margin-top: 15px;
		margin-bottom: 25px;
	}
    #mainMailInnerTable{
    	width: 100%;
    	height: 100%;
    }
    #mainMailInnerLabel{
    	height: 35%;
    	font-size: 14px;
    	text-align: center;
    	padding-top: 5px;
    }
    #mainMailInnerContent{
    	font-size: 30px;
    	text-align: center;
    	color: black;
    }
    
    #mainMailBoard{
    	width: 100%;
    }

    
    /* main */
    
    
	/* 게시판 스타일 */
	/* .boardTable {
		width: 1400px;
		height: 400px;
	} */
	
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


</style>   
</head>
<body>
	<!-- 이곳에 메뉴바 include -->
	
	<!-- 이곳에 메뉴바 include -->
	<jsp:include page="../common/menubar.jsp" />

	<div class="outer">
		<div class="topBar"><span></span></div>
		<!-- <div class="subMenuArea"></div> -->
		<div class="contentArea">
			<!-- 내용 작성 영역 입니다-->
			<table id="mainTable">
				<tr>
					<td id="mainScheduleArea">
						<table id="mainScheduleTable">
							<tr>
								<th class="mainLabel">
									<img src="../../resources/icons/event.png">
									<span style="vertical-align: top;">일정관리</span>
								</th>
								<td class="mainNextArea">
									<div id="mainScheduleRadio">
										<input type="radio" id="individual" class="mainRadioBtn" checked>
										<label for="individual" class="mainRadioLabel">개인</label>&nbsp;&nbsp;
										<input type="radio" id="business" class="mainRadioBtn" checked>
										<label for="business" class="mainRadioLabel">업무</label>&nbsp;&nbsp;
										<input type="radio" id="share" class="mainRadioBtn" checked>
										<label for="share" class="mainRadioLabel">공유</label>
									</div>
									<button class="mainNextBtn"><img src="../../resources/icons/next.png"></button>
								</td>
							</tr>
							<tr>
								<td colspan="2" id="mainDateArea">2020년 05월 20일</td>
							</tr>
							<tr>
								<td colspan="2">
									<!-- 게시판 -->
									<table id="mainScheduleBoard" class="boardTable">
										<thead>
											<tr>
												<th>ㅁㅁㅁ</th>
												<th>ㅇㅇㅇ</th>
												<th>ㅅㅅㅅ</th>
												<th>ㄷㄷㄷ</th>
											</tr>
										</thead>
										<tr>
											<td>게시판</td>
											<td>내용</td>
											<td>입니다~</td>
											<td>~~~</td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</table>
									<!-- 게시판 -->
								</td>
							</tr>
						</table>
					</td>
					<td id="mainMailArea">
						<table id="mainMailTable">
							<tr>
								<th class="mainLabel">
									<img src="../../resources/icons/mail.png">
									<span style="vertical-align: top;">전자메일</span>
								</th>
								<td class="mainNextArea">
									<button class="mainNextBtn"><img src="../../resources/icons/next.png"></button>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div id="mainMailDiv">
										<table id="mainMailInnerTable">
											<tr id="mainMailInnerLabel">
												<td style="width: 33%">안 읽은 메일</td>
												<td style="width: 33%">받은 메일</td>
												<td style="width: 33%">중요 메일</td>
											</tr>
											<tr id="mainMailInnerContent">
												<td>130</td>
												<td>120</td>
												<td>27</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<!-- 게시판 -->
									<table id="mainMailBoard" class="boardTable">
										<thead>
											<tr>
												<th>ㅁㅁㅁ</th>
												<th>ㅇㅇㅇ</th>
												<th>ㅅㅅㅅ</th>
												<th>ㄷㄷㄷ</th>
											</tr>
										</thead>
										<tr>
											<td>게시판</td>
											<td>내용</td>
											<td>입니다~</td>
											<td>~~~</td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</table>
									<!-- 게시판 -->
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td id="mainNoticeArea">
						<table id="mainNoticeTable">
							<tr>
								<th class="mainLabel">
									<img src="../../resources/icons/notice.png">
									<span style="vertical-align: top;">공지사항</span>
								</th>
								<td class="mainNextArea">
									<button class="mainNextBtn"><img src="../../resources/icons/next.png"></button>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<!-- 게시판 -->
									<table id="mainNoticeBoard" class="boardTable">
										<tr>
											<td>게시판</td>
											<td>내용</td>
											<td>입니다~</td>
											<td>~~~</td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</table>
									<!-- 게시판 -->
								</td>
							</tr>
						</table>
					</td>
					<td id="mainSignArea">
						<table id="mainSignTable">
							<tr>
								<th class="mainLabel">
									<img src="../../resources/icons/sign.png">
									<span style="vertical-align: top;">전자결재</span>
								</th>
								<td class="mainNextArea">
									<button class="mainNextBtn"><img src="../../resources/icons/next.png"></button>
								</td>
							</tr>
							<tr>
								<td colspan="2"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>