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
	
	/* 아이디 찾기 테이블 */
    #findIdTable{
        align: center;
    	margin: auto;
    	margin-top: 50px;
    	margin-bottom: 30px;
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
        <table id="findIdTable" border="1">
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
                	<input id="findIdEmail2" name="emailDomain" type="text" list="emailDomain" placeholder="직접입력">
				        <datalist id="emailDomain">
				            <option>@naver.com</option>
				            <option>@gmail.com</option>
				            <option>@hanmail.net</option>
				        </datalist>
                </td>
            </tr>
            <tr>
	        	<td colspan="2"><button id="findIdSendNoBtn" class="middleBtn">인증번호 발송</button></td>
	        </tr>
	        <tr>
                <td colspan="2"><input id="findIdNo" type="text" placeholder="인증번호 입력"></td>
            </tr>
            <tr>
                <td colspan="2" class="findIdTd"><button id="findIdBtn" class="bigBtn">아이디 찾기</button></td>
            </tr>

        </table>
    </form>
	</div>
</body>
</html>