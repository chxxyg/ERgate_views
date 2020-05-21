<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 모달 사용페이지에 복사해주세요 -->

<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

.modal {
	width: 1000px;
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

html, body {
	margin: 0;
	height: 100%;
	overflow-x: hidden;
	overflow-y: auto;
	font-family: "Nanum Gothic", serif;
	overflow-x: hidden;
}

.reservationContent{
	border:1px solid black;
	width:100%;
	height:400px;
	margin-top:10px;
}
/*select 옵션*/
.meetionroom{
	float:left;
}

/* inputs */
.inputs {
	width:300px;
	height: 25px;
	border: 1px solid lightgray;
	border-radius: 3px;
}

.BigInput{
	width:400px;
	height: 35px;
	border: 1px solid lightgray;
	border-radius: 3px;
	margin-left:10px;
}

/* 예약하기 버튼*/
.btns{
	margin-left:30%;
}

.reservationBtn{
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
}

.reservationBtn:hover{
	cursor: pointer;
}

.resetBtn{
	width: 140px;
	height: 40px;
	border: 0px;
	border-radius: 5px;
	background: rgb(190, 190, 190); /* 회색 : rgb(190, 190, 190) */
	color: white;
	font-size: 18px;
}

.resetBtn:hover{
	cursor: pointer;
}

/* 가용회의실 검색 버튼*/
.searchBtn{
	width: 100px;
	height: 25px;
	border: 0px;
	border-radius: 5px;
	background:  lightgray;
	color: white;
	font-size: 12px;
	float:left;
}
.searchBtn:hover{
	cursor: pointer;
}

#meetingroomBox{
	float:left;
	height:20px;
}

/*콘텐트 내용*/
.reservationContent{
 	border-collapse:collapse;
 	border-bottom:3px solid lightgray;
 	border-top:3px solid #dddd; 
 	border-left:none;
 	border-right:none;
 	font-size:13px;
}

#r1{
	width:20%;
	text-align:center;
	border-bottom:1px ridge lightgray; 
	background-color:#eeee;
	
}
#r2{
	width:80%;
	padding:20px;
	border-bottom:1px solid lightgray;
} 
#r3{
	text-align:center;
	background-color:#eeee;
}
#r4{
	width:80%;
	padding:20px;
}
</style>
</head>
<body>



	<div id="modal-form" class="modal">
		<div class="modal-title">회의실 예약</div>
		<div class="modal-content">
			 <table class="reservationContent">
			 
				    <tr><td id="r1">신청자</td><td id="r2">케빈과장</td></tr>
				    
					<tr>
					<td id="r1">사용기간</td>
					<td id="r2"><form name="" action="" method="post"><input type="date" value=""></form></td> 
					<!-- <td><form name="" action="" method="post"><input type="date" value=""></form></td> -->
					</tr>
					
					<tr>
					<td id="r1">회의실</td>
					<td id="r2">
					<select name="meetingroom">
						<option selected>회의실 선택</option>
						<option value="5F 회의실1">5F 회의실1</option>
						<option value="5F 회의실">5F 회의실2</option>
						<option value="5F 회의실">5F 회의실3</option>
						<option value="6F 회의실">6F회의실</option>
					</select>
					<br>
					<button class="searchBtn">가용회의실 검색</button><br>
					<input type="text" id="meetingroomBox" class="inputs">
					</td>
					</tr>
					
					<tr><td id="r1">사용목적</td><td id="r2"><input type="text" placeholder="내용을 입력하세요" class="inputs"></td></tr>
					
					<tr>
					<td id="r1">참석자(내부)</td>
					<td id="r2"><button class="searchBtn">참석자 지정</button>
					<input type="text" class="BigInput">
					</td>
					</tr>
					
					<tr><td id="r3">참석자(외부)</td><td id="r4"><input type="text" class="inputs"></td></tr>
 			 </table>   
		</div>
	
		<br><br>
	<!-- 예약/취소 버튼 -->
		<div class=btns>
			<button class="reservationBtn" type="submit">예약하기</button>
			<button class="resetBtn" type="reset">취소</button>
		</div>
	</div>


		<!-- 모달용 스크립트 -->
		<script>
		$('.open-modal').click(function() {
			$(this).modal({
				fadeDuration : 150
			});
	
		});
		</script>
	


	

</body>
</html>