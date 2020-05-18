<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* ==========페이지영역========== */

	/* 계정등록폼 테이블 */
    #enrollTable{
    	align: center;
    	margin: auto;
    	margin-top: 100px;
    	margin-bottom: 100px;
    }
    #enrollTable>tr>td{
    	heigth: 160px;
    }
    #enrollDescript{
    	color: gray;
    	font-size: 20px;
    	height: 60px;
    	text-align: center;
    }
    .enrollLabel{
    	text-align: right;
    	font-size: 20px;
    	padding-right: 50px;
    	height: 60px;
    	width: 300px;
    }
    #enrollTable input{
    	padding: 5px;
		width: 280px;
		height: 25px;
		border: 1px solid lightgray;
		border-radius: 3px;
		margin-right: 10px;
    }
	.middleBtn {
		width: 90px;
		height: 35px;
		border: 0px;
		border-radius: 5px;
		color: white;
		font-size: 15px;
	}
	.middleBtn:hover {
		cursor: pointer;
	}
	#enrollIdCheck, #enrollAddress{
		background: rgb(190, 190, 190);
	}
	#enrollAddress{
		width: 120px;
		margin-right: 10px;
	}
	.bigBtn {
		width: 140px;
		height: 40px;
		border: 0px;
		border-radius: 5px;

		color: white;
		font-size: 18px;
	}
	.bigBtn:hover {
		cursor: pointer;
	}
	#enrollSubmit{
		background: rgb(26, 188, 156);
	}
	#enrollReset{
		background:  rgb(190, 190, 190);
	}
    /* 계정등록폼 테이블 */

/* ==========페이지영역========== */
</style>   
</head>
<body>
	
    <form action="">
        <table id="enrollTable" border="1">
            <tr>
                <td colspan="2" style="text-align: center;"><img src="../../resources/siteImg/logo.png"></td>
            </tr>
            <tr>
                <td colspan="2" id="enrollDescript">계정 등록을 위해 필요한 정보를 입력해 주세요.</td>
            </tr>
            <tr>
                <td class="enrollLabel">아이디</td>
                <td><input type="text"><button id="enrollIdCheck" class="middleBtn">중복검사</button></td>
            </tr>
            <tr>
                <td class="enrollLabel">비밀번호</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="enrollLabel">비밀번호 확인</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="enrollLabel">이름</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="enrollLabel">프로필 사진</td>
                <td><input type="image"></td>
            </tr>
            <tr>
                <td class="enrollLabel">생년월일</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="enrollLabel">휴대폰 번호</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td class="enrollLabel">이메일 주소</td>
                <td><input type="text"><input type="text"></select></td>
            </tr>
            <tr>
                <td class="enrollLabel">자택 주소</td>
                <td><button id="enrollAddress" class="middleBtn">우편번호 찾기</button><input type="text"><br>
                    <input type="text"><br>
                    <input type="text">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                	<button id="enrollSubmit" class="bigBtn">계정등록요청</button> &nbsp;&nbsp;
                	<button id="enrollReset" class="bigBtn">취소</button>
                </td>
            </tr>
        </table>
    </form>

</body>
</html>