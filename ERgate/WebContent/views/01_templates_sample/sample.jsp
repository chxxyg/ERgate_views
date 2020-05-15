<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
/* ==========����������========== */
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

    /* ����޴��� ���� */
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
    /* ����޴��� ���� */

    /* ����޴��� �޴���ư(�⺻) */
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
    /* ����޴��� �޴���ư(�⺻) */
    /* ����޴��� �޴���ư(�����������϶�) */
    .subActive{
        border:4px solid rgb(26, 188, 156);
    }
    /* ����޴��� �޴���ư(�����������϶�) */

    /* ���������� */
    .contentArea {
        margin-top: 50px;
        margin-left:100px;
        width:1600px;
        height:auto;
        float:left;
    }
    /* ���������� */

/* ==========����������========== */
</style>
</head>
<body>
	<!-- �̰��� �޴��� include -->
	<jsp:include page="../common/menubar.jsp"/>
	<!-- �̰��� �޴��� include -->
	
	<div class="outer">
		<div class="topBar">
			<!-- �޴��� -->
			<span>�޴���</span>
		</div>
		<div class="subMenuArea">
			<ul id="subMenuList">
				<!-- ����޴� ��ư ����. �⺻:subBtn , Ȱ��ȭ��: subBtn subActive Ŭ���� �߰����ּ��� -->
				<li><button class="subBtn subActive">�޴�1</button></li>
				<li><button class="subBtn">�޴�2</button></li>
				<li><button class="subBtn">�޴�3</button></li>
				<li><button class="subBtn">�޴�4</button></li>
			</ul>
		</div>
		<div class="contentArea">
			<!-- ���� �ۼ� ���� �Դϴ�-->

		</div>
	</div>
</body>
</html>