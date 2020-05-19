<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
<style>
/* ==========페이지영역========== */

	#findIdOuter{
		border: 1px solid lightgray;
		width: 550px;
		height: auto;
		margin: auto;
		background: white;
    	margin-top: 170px;
    	margin-bottom: 100px;
    	border-radius: 10px;
	}
	
    /* 로그인폼 테이블 */
    #findIdTable{
        align: center;
    	margin: auto;
    	margin-top: 50px;
    	margin-bottom: 30px;
    }
    #findIdTable tr td{
        height: 60px;
        font-size: 16px;
    }
    .findIdTd{
    	width: 60px;
    	text-align: center;
    }
    #enrollDescript{
    	color: gray;
    	font-size: 16px;
    	height: 70px;
    	text-align: center;
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
    
    /* 배경 이미지 */
    body{
	    background-image: url('../../resources/siteImg/backgroundImage.png');
	    background-repeat: no-repeat; 
	    background-size: 99% 70%;
	    background-position: center; 
	    background-attachment: fixed; 
    }
    /* 배경 이미지 */

/* ==========페이지영역========== */
</style>   
</head>
<body>
	<div id="findIdOuter">
    <form action="">
        <table id="findIdTable">
            <tr>
                <td colspan="2" style="text-align: center;"><img src="../../resources/siteImg/logo.png"></td>
            </tr>
            <tr>
                <td colspan="2" id="findIdDescript">아이디 찾기</td>
            </tr>
            <tr>
                <td class="findIdTd" style="font-size: 22px;">이름</td>
                <td><input id="findIdName" type="text"></td>
            </tr>
            <tr>
                <td class="findIdTd" style="font-size: 22px;">이메일 주소</td>
                <td>
                	<input id="findIdEmail1" type="text">
                	<input id="findIdEmail2" name="findIdEmailDomain" type="text" list="emailDomain" placeholder="직접입력">
				        <datalist id="emailDomain">
				            <option>@naver.com</option>
				            <option>@gmail.com</option>
				            <option>@hanmail.net</option>
				        </datalist>
                </td>
            </tr>
            <tr>
	        	<td colspan="2"><button id="enrollAddressBtn" class="middleBtn">인증번호 발송</button></td>
	        </tr>
	        <tr>
                <td colspan="2"><input id="findIdName" type="text"></td>
            </tr>
            <tr>
                <td colspan="2" class="loginTd"><button id="loginBtn" class="bigBtn">아이디 찾기</button></td>
            </tr>

        </table>
    </form>
	</div>
</body>
</html>