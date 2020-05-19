<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	width: 800px;
	height: 800px;
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


.reservationContent{
	border:1px solid black;
}

/* 예약하기 버튼*/
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
}

.resetBtn{
	width:160px;
	height:50px;
	background-color:rgb(127, 127, 127);
	text-align:center;
	font-size:25px;
	color:white;
	margin-left:10px;
	outline:none;
	border-radius:10px;
	border:0px;
}

</style>
</head>
<body>


	<div class="popup-outer">
		<div class="popup-title">회의실 예약</div>
		<div class="popup-content">
			 <table class="reservationContent">
			 
				    <tr><td>신청자</td><td>케빈과장</td></tr>
				    
					<tr>
					<td>사용기간</td>
					<td><form name="" action="" method="post"><input type="date" value=""></form></td> 
					<td><form name="" action="" method="post"><input type="date" value=""></form></td>
					</tr>
					
					<tr>
					<td>회의실</td>
					<td>
					<select name="meetingroom">
						<option selected>회의실 선택</option>
						<option value="5F 회의실1">5F 회의실1</option>
						<option value="5F 회의실">5F 회의실2</option>
						<option value="5F 회의실">5F 회의실3</option>
						<option value="6F 회의실">6F회의실</option>
					</select></td>
					</tr>
					
					<tr><td>사용목적</td><td><input type="text" placeholder="내용을 입력하세요"></td></tr>
					
					<tr><td>참석자(내부)</td><td>게시물 글 제목입니다</td></tr>
					
					<tr><td>참석자(외부)</td><td><input type="text"></td></tr>
 			 </table>   
		</div>
	
		<br><br>
	<!-- 예약/취소 버튼 -->
	<button class="reservationBtn" type="submit">예약하기</button>
	<button class="resetBtn" type="reset">취소</button>
	
	</div>




	<!-- 팝업창 자동 사이즈맞춤용 스크립트 -->
	<script>
      $(document).ready(function () {
        // 팝업 창 크기를 HTML 크기에 맞추어 자동으로 크기를 조정하는 함수.
        var strWidth;
        var strHeight;

        //innerWidth / innerHeight / outerWidth / outerHeight 지원 브라우저
        if (
          window.innerWidth &&
          window.innerHeight &&
          window.outerWidth &&
          window.outerHeight
        ) {
          strWidth =
            $(".popup-outer").outerWidth() +
            (window.outerWidth - window.innerWidth);
          strHeight =
            $(".popup-outer").outerHeight() +
            (window.outerHeight - window.innerHeight);
        } else {
          var strDocumentWidth = $(document).outerWidth();
          var strDocumentHeight = $(document).outerHeight();

          window.resizeTo(strDocumentWidth, strDocumentHeight);

          var strMenuWidth = strDocumentWidth - $(window).width();
          var strMenuHeight = strDocumentHeight - $(window).height();

          strWidth = $(".popup-outer").outerWidth() + strMenuWidth;
          strHeight = $(".popup-outer").outerHeight() + strMenuHeight;
        }

        //resize
        window.resizeTo(strWidth, strHeight);
      });
    </script>

</body>
</html>