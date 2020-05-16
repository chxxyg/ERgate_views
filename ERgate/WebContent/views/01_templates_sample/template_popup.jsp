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

      /* �����˾�â ���������� */
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
        �˾�Ÿ��Ʋ
      </div>
      <div class="popup-content">
        �˾�����
      </div>
    </div>




	<!-- �˾�â �ڵ� ���������� ��ũ��Ʈ -->
    <script>
      $(document).ready(function () {
        // �˾� â ũ�⸦ HTML ũ�⿡ ���߾� �ڵ����� ũ�⸦ �����ϴ� �Լ�.
        var strWidth;
        var strHeight;

        //innerWidth / innerHeight / outerWidth / outerHeight ���� ������
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