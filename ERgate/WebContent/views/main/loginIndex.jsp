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
        font-size: 20px;
    }
    #loginForm input{
    	padding: 5px;
		width: 280px;
		height: 25px;
		border: 1px solid lightgray;
		border-radius: 3px;
    }
    /* 로그인폼 테이블 */

/* ==========페이지영역========== */
</style>   
</head>
<body>
	
    <form action="">
        <table id="loginForm">
            <tr>
                <td colspan="2" style="text-align: center;"><img src="../../resources/siteImg/logo.png"></td>
            </tr>
            <tr>
                <td>ID &nbsp;&nbsp;</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td>PW &nbsp;&nbsp;</td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button>로그인</button></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><button>계정등록</button></td>
            </tr>
        </table>
    </form>

</body>
</html>