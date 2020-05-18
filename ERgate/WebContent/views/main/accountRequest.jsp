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
</style>   
</head>
<body>
	
	<div class="outer">

		<div class="contentArea">
            <!-- 내용 작성 영역 입니다-->
            
            <form action="">
                <table>
                    <tr>
                        <td colspan="2"><img src="" alt=""></td>
                    </tr>
                    <tr>
                        <td colspan="2">계정 등록을 위해 필요한 정보를 입력해 주세요.</td>
                    </tr>
                    <tr>
                        <td>아이디</td>
                        <td><input type="text"><button>중복검사</button></td>
                    </tr>
                    <tr>
                        <td>비밀번호</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>비밀번호 확인</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>프로필 사진</td>
                        <td><input type="image"></td>
                    </tr>
                    <tr>
                        <td>생년월일</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>휴대폰 번호</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                        <td>이메일 주소</td>
                        <td><input type="text"><input type="text"></select></td>
                    </tr>
                    <tr>
                        <td>자택 주소</td>
                        <td><button>우편번호 찾기</button><input type="text"><br>
                            <input type="text"><br>
                            <input type="text">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><button>계정등록요청</button><button>취소</button></td>
                    </tr>
                </table>
            </form>

		</div>
	</div>
</body>
</html>