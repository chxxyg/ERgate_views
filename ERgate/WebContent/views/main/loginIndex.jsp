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

    /* 로그인폼 테이블 */
    #loginForm tr td{
        height: 60px;
        font-size: 20px;
    }
    #loginForm tr td input{
        width: 200px;
        height: 25px;
        border-radius: 5%;
    }

/* ==========페이지영역========== */
</style>   
</head>
<body>
	
	<div class="outer">

		<div class="contentArea">
			<!-- 내용 작성 영역 입니다-->

            <form action="">
                <table id="loginForm">
                    <tr>
                        <td colspan="2"><img src="" alt=""></td>
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
        </div>
	</div>
</body>
</html>