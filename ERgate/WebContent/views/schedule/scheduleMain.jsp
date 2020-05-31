<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>meetingroomCurrentStatus</title>
<jsp:include page="../common/menubar.jsp" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 이 부분  -->

<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

<style>
/* 탭 css */
   .tabWrap { width: 900px; height: 500px; }
   .tab_Menu { margin: 0px; padding: 0px; list-style: none; }
   .tabMenu { width: 150px; margin: 0px; text-align: center; 
            padding-top: 10px; padding-bottom: 10px; float: left; }
      .tabMenu a { color: #000000; font-weight: bold; text-decoration: none; }
   .current {
            border: 1px solid blue; border-bottom:hidden; }
   .tabPage { width: 900px; height: 470px; float: left;}
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
        width: 150px;
        height: 50px;
        font-size: 19px;
        color:rgb(127, 127, 127);
        background-color: white;
        border-radius: 25px;
    }
    .subBtn:hover{cursor: pointer;}
    /* 서브메뉴바 메뉴버튼(기본) */
    /* 서브메뉴바 메뉴버튼(현재페이지일때) */
    .subActive{
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
   
   html, body {
      margin: 0;
      height: 100%;
      overflow-x: hidden;
      overflow-y: auto;
      font-family: "Nanum Gothic", serif;
      overflow-x: hidden;
   }
   #reservationBtn {
      width: 140px;
      height: 40px;
      border: 0px;
      border-radius: 5px;
      background: rgb(26, 188, 156);
      color: white;
      font-size: 18px;
      margin-left: 50px;
   }
   #reservationBtn:hover {
      cursor: pointer;
   }
   
  
   
/* ==========예약하기 모달========== */
   
   /* 예약 모달 */
   .modal {
      max-width: 2000px;
      width: 1000px;
      height: 1000px; /* 모달 크기지정 */
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


   #minusImg{
      width: 15px;
      height: 15px;
      vertical-align: middle;
      margin-left: 10px;
      margin-right: 10px;
      margin-bottom: 5px;
   }


   #r1 {
      width: 20%;
      text-align: center;
      border-bottom: 1px ridge lightgray;
      background-color: #eeee;
   }
   #r2 {
      width: 80%;
      padding: 20px;
      border-bottom: 1px solid lightgray;
   }
   #r3 {
      text-align: center;
      background-color: #eeee;
   }
   #r4 {
      width: 80%;
      padding: 20px;
   }
   #reservBtn, #resetBtn{
      width: 140px;
      height: 40px;
      border: 0px;
      border-radius: 5px;
      color: white;
      font-size: 18px;
      margin-top: 20px;
   }
   #reservBtn{
      background: rgb(26, 188, 156);
      margin-left: 60px;
   }
   #resetBtn{
      background: rgb(190, 190, 190);
   }
   #reservBtn:hover, #resetBtn:hover{
      cursor: pointer;
   }

/* ==========예약하기 모달========== */



</style>
</head>
<body>

   <!-- 메뉴바 -->

   <div class="outer">
      <div class="topBar">
         <!-- 메뉴명 -->
         <span>일정</span>
      </div>
      <div class="subMenuArea">
         <ul id="subMenuList">
            <!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
            <li><button class="subBtn subActive">일정조회</button></li>
         </ul>
      </div>
      <div class="contentArea">

         <button id="reservationBtn">일정등록</button>
         <a  id="reservation" class="open-modal" href="#open_reservation" style="display: none;">모달</a> <br> 


      </div>

      <!-- 캘린더 api 쓸거임 -->

      <!-- 모달~모달~ 핵어렵 -->
      <!-- 모달 내용(예약하기 부분) -->
      <div id="open_reservation" class="modal" style="height: 730px;">
         <div class="modal-title">회의실 예약</div>
         <div class="modal-content">
         
          <div class="tabWrap">
            <ul class="tab_Menu">
               <li class="tabMenu current">
                  <a href="#tabContent01" >개인일정</a>
               </li>
               <li class="tabMenu">
                  <a href="#tabContent02" >업무일정</a>
               </li>
               <li class="tabMenu">
                  <a href="#tabContent03" >공유일정</a>
               </li>
            </ul>
            <div class="tab_Content_Wrap">
               <div id="tabContent01" class="tabPage">
                   <table class="reservationContent">
                        <tr>
                           <td id="r1">제목</td>
                           <td id="r2">
                              <input type="text" placeholder="내용을 입력해주세요." class="inputs">
                           </td>
                        </tr>
                        <tr>
                           <td id="r1">시작일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">                           
                              </form>
                           </td>
                        </tr>
                        
                        <tr>                        
                           <td id="r1">종료일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">         
                              </form>
                           </td>
                        </tr>
                        <tr>
                           <td id="r1">내용</td>
                           <td id="r2">                             
                             <textarea cols="60" rows="4" id="partArea" placeholder="내용을 입력해주세요." readonly></textarea>
                           </td>
                        </tr>
                     </table>
               </div>
               <div id="tabContent02" class="tabPage">
                  <table class="reservationContent">
                        <tr>
                           <td id="r1">제목</td>
                           <td id="r2">
                              <input type="text" placeholder="내용을 입력해주세요." class="inputs">
                           </td>
                        </tr>
                        <tr>
                           <td id="r1">시작일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">                           
                              </form>
                           </td>
                        </tr>
                        
                       <tr>
                           <td id="r1">종료일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">         
                              </form>
                           </td>
                        </tr>
                         <tr>
                           <td id="r1">참석자(내부)</td>
                           <td id="r2">
                           <button id="searchBtn2" class="searchBtn" >참석자 지정</button>
                              <textarea cols="60" rows="4" id="partArea" readonly></textarea>
                           </td>
                        </tr>
                        <tr>
                           <td id="r3">참석자(외부)</td>
                           <td id="r4"><input type="text" class="inputs"></td>
                        </tr>
                        <tr>
                           <td id="r1">수신자</td>
                           <td id="r2">
                           <button id="searchBtn2" class="searchBtn" >수신자 지정</button>
                              <textarea cols="60" rows="4" id="partArea" readonly></textarea>
                           </td>
                        </tr> 
                        
                        <tr>
                           <td id="r1">회의장소</td>
                           <td id="r2">
                              <input type="radio"> 지정회의실
                              <select>
                                 <option>회의실 1</option>
                                 <option>회의실 2</option>
                              </select><br>
                                 <input type="radio"> 외부회의실
                                 <input type="text">  <br>
                                 <input type="radio"> 지정안함 <br>
                           </td>                                                      
                        </tr> 
                        
                        <tr>
                           <td id="r1">내용</td>
                           <td id="r2">                             
                             <textarea cols="60" rows="4" id="partArea" placeholder="내용을 입력해주세요." readonly></textarea>
                           </td>
                        </tr>
                     </table>
               </div>
               <div id="tabContent03" class="tabPage">
                  <table class="reservationContent">
                        <tr>
                           <td id="r1">제목</td>
                           <td id="r2">
                              <input type="text" placeholder="내용을 입력해주세요." class="inputs">
                           </td>
                        </tr>
                        <tr>
                           <td id="r1">시작일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">                           
                              </form>
                           </td>
                        </tr>
                        
                        <tr>                        
                           <td id="r1">종료일시</td>
                           <td id="r2">
                              <form name="" action="" method="post">
                                 <input type="date" class="inputs" style="width:140px">
                                 <img src="${ pageContext.servletContext.contextPath }/resources/icons/minus.png" id="minusImg">
                                 <input type="time" class="inputs" style="width:120px">         
                              </form>
                           </td>
                        </tr>
                        <tr>
                           <td id="r1">내용</td>
                           <td id="r2">                             
                             <textarea cols="60" rows="4" id="partArea" placeholder="내용을 입력해주세요." readonly></textarea>
                           </td>
                        </tr>
                        <tr>
                           <td id="r1" >
                            <input type="checkbox"> 부서만 공유
                         </td>
                         <td id="r1"></td>
                         </tr>
                     </table>
                    
               </div>
            </div>
         </div>

         </div>

         <!-- 예약/취소 버튼 -->
         <div class="btns">
            <button id="reservBtn" type="submit">예약하기</button>
            <button id="resetBtn" type="reset">취소</button>
         </div>
      </div>
      
   
   </div>

   <!-- 모달용 스크립트 -->
   <script>
      $('.open-modal').click(function() {
         $(this).modal({
            fadeDuration : 150
         });
      });

      /* 예약하기 모달 여는 function */
      $("#reservationBtn").on("click",function(){
            $("#reservation").click();
      });
   </script>

<script type="text/javascript">
   function tabSetting() {
      // 탭 컨텐츠 hide 후 현재 탭메뉴 페이지만 show
      $('.tabPage').hide();
      $($('.current').find('a').attr('href')).show();

      // Tab 메뉴 클릭 이벤트 생성
      $('li').click(function (event) {
         var tagName = event.target.tagName; // 현재 선택된 태그네임
         var selectedLiTag = (tagName.toString() == 'A') ? $(event.target).parent('li') : $(event.target); // A태그일 경우 상위 Li태그 선택, Li태그일 경우 그대로 태그 객체
         var currentLiTag = $('li[class~=current]'); // 현재 current 클래그를 가진 탭
         var isCurrent = false;  
         
         // 현재 클릭된 탭이 current를 가졌는지 확인
         isCurrent = $(selectedLiTag).hasClass('current');
         
         // current를 가지지 않았을 경우만 실행
         if (!isCurrent) {
            $($(currentLiTag).find('a').attr('href')).hide();
            $(currentLiTag).removeClass('current');

            $(selectedLiTag).addClass('current');
            $($(selectedLiTag).find('a').attr('href')).show();
         }

         return false;
      });
   }

   $(function () {
      // 탭 초기화 및 설정
      tabSetting();
   });
</script>
</body>
</html>