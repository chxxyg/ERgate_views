<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
      @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
      html,
      body {
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
    </style>
</head>
<body>


   <div class="popup-outer">
      <div class="popup-title">
        팝업타이틀
      </div>
      <div class="popup-content">
        팝업내용
      </div>
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