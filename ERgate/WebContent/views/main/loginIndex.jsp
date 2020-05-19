<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* ==========페이지영역========== */

    /* 로그인폼 테이블 */
    #loginForm{
    margin: auto;
    }
    #loginForm tr td{
        height: 60px;
        font-size: 16px;
    }
    #loginLabel{
    }
    #loginId, #loginPwd{
    	padding: 5px;
		width: 280px;
		height: 25px;
		border: 1px solid lightgray;
		border-radius: 3px;
    }
    #loginSaveId{
		width: 22px;
		height: 22px;

    }
    
    .bigBtn {
		width: 140px;
		height: 40px;
		border: 0px;
		border-radius: 5px;
		background: rgb(26, 188, 156); /* 회색 : rgb(190, 190, 190) */
		color: white;
		font-size: 18px;
	}
	
	.bigBtn:hover {
		cursor: pointer;
	}
	#loginBtn{
		background: rgb(26, 188, 156);
	}
	#loginEnrollBtn{
		background: rgb(190, 190, 190)
	}
    /* 로그인폼 테이블 */

/* ==========페이지영역========== */
</style>   
</head>
<body>
	
    <form action="">
        <table id="loginForm" border="1">
            <tr>
                <td colspan="2" style="text-align: center;"><img src="../../resources/siteImg/logo.png"></td>
            </tr>
            <tr>
                <td>ID &nbsp;&nbsp;</td>
                <td><input id="loginId" type="text"></td>
            </tr>
            <tr>
                <td>PW &nbsp;&nbsp;</td>
                <td><input id="loginPwd" type="text"></td>
            </tr>
            <tr>
            	<td></td>
            	<td><input id="loginSaveId" type="checkbox"><label for="">아이디 저장</label></td>
            </tr>
            <tr>
                <td colspan="2" class="loginLabel"><button id="loginBtn" class="bigBtn">로그인</button></td>
            </tr>
            <tr>
                <td colspan="2" class="loginLabel"><button id="loginEnrollBtn" class="bigBtn">계정등록</button></td>
            </tr>
            <tr>
            	<td colspan="2" class="loginLabel"><a>아이디 찾기</a> | <a>비밀번호 찾기</a></td>
            </tr>
        </table>
    </form>

</body>
</html>