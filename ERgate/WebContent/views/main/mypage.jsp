<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

    /* 구분선 */
    .mypageLine{
        border-bottom: 1px solid gray;
        margin-top: 15px;
        margin-bottom: 20px;
        width: 580px;
    }
    /* 구분선 */

/* ==========페이지영역========== */
</style>   
</head>
<body>
	<!-- 이곳에 메뉴바 include -->
	
	<!-- 이곳에 메뉴바 include -->
	
	<div class="outer">
		<div class="topBar">
			<!-- 메뉴명 -->
			<span>마이페이지</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- 서브메뉴 버튼 영역. 기본:subBtn , 활성화시: subBtn subActive 클래스 추가해주세요 -->
				<li><button class="subBtn subActive">개인정보관리</button></li>
			</ul>
		</div>
		<div class="contentArea">
            <!-- 내용 작성 영역 입니다-->

            <form action="">
                <table border="1">
                    <tr>
                        <td>
                            <table style="text-align: center;">
                                <tr>
                                    <td><div style="width: 250px; height: 205px;"><input type="image"></div></td>
                                </tr>
                                <tr>
                                    <td><button>편집</button></td>
                                </tr>
                                <tr>
                                    <td>ID erkevin</td>
                                </tr>
                                <tr>
                                    <td>개인정보 수정 후 <br>그룹웨어 정보 반영을 위해 <br>재로그인 해주세요.</bt></td>
                                </tr>
                            </table>
                        </td>
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td colspan="3">알림설정</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox">
                                        <label for="">받은 메일</label>
                                    </td>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                        <label for="">결재 대기</label>
                                    </td>
                                    <td>
                                        <input type="checkbox">
                                        <label for="">결재 완료</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3"><div class="mypageLine"></div></td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td colspan="2">비밀변호 변경</td>
                                </tr>
                                <tr>
                                    <td>새 비밀번호</td>
                                    <td>새 비밀번호 확인</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><div class="mypageLine"></div></td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td colspan="2">직장 정보</td>
                                </tr>
                                <tr>
                                    <td>사원번호</td>
                                    <td>부서</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td>직급</td>
                                    <td>직책</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td>내선 번호</td>
                                    <td>팩스 번호</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text" name="" id=""></td>
                                </tr>
                                <tr>
                                    <td>입사일</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><div class="mypageLine"></div></td>
                                </tr>
                            </table>
                            <table>
                                <tr>
                                    <td colspan="2">개인 정보</td>
                                </tr>
                                <tr>
                                    <td>이름</td>
                                    <td>생년월일</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text"></td>
                                </tr>
                                <tr>
                                    <td>휴대폰번호</td>
                                    <td>이메일</td>
                                </tr>
                                <tr>
                                    <td><input type="text" name="" id=""></td>
                                    <td><input type="text" name="" id=""><input type="text"></select></td>
                                </tr>
                                <tr>
                                    <td colspan="2">자택 주소</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><button>우편번호찾기</button><input type="text" name="" id=""><input type="text"><br><input type="text"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit">수정</button><button>취소</button></td>
                        <td></td>
                    </tr>
                </table>
            </form>
		</div>
	</div>
</body>
</html>