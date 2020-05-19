package com.kh.ergate.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet22
 */
@WebServlet("/test.no")
public class TestServlet22 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet22() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 값을 뽑기 전에 인코딩(한글포함값 넘어오므로)
		request.setCharacterEncoding("utf-8");
		
		// 폼 전송방식이 일반방식이 아닌 multipart/form-data로 전송할 경우
		// 파일 업로드를 위한 라이브러리를 다운받아야함 : cos.jar (com.orelilly.servlet의 약자)
		// http://www.servlets.com
		// com.oreilly.servlet 메뉴에서 하단 zip파일 다운로드,
		// 압축풀고 lib폴더의 cos.jar파일을 해당 프로젝트의 WEB-INF/lib 폴더에 넣음
		
		// Http~request가 아닌, multipart/form-data로 변환하기 위한 작업임.
		
		
		// enctype이 multipart/form-data 로 잘 전송되었을 경우 일련의 과정 진행하도록
		// 우선 제대로 전송되었는지 조건검사
		if(ServletFileUpload.isMultipartContent(request)) {
			
			multiRequest
			
			
			// 1. 전송된 파일을 위해 처리할 작업 (전송되는 파일의 용량 제한, 전달된 파일을 업로드(저장)할 폴더 경로 지정)
			
			// 1-1. 전송되는 파일 용량 제한 (int maxSize)
			//		10Mb로 제한한다고 할때.(작성은 바이트단위로 해야함)
			
			//		byte -> kbyte -> mbyte
			//		1Kbyte = 1024byte
			//		1Mbyte = 1024Kbyte = 1024 * 1024 byte
			//		10Mbyte = 10 * 1024 * 1024 byte
			
			//int maxSize = 10 * 1024 * 1024;
			
			// 1-2. 전달되는 파일을 저장할 서버의 폴더 경로 알아내기 (물리적 경로) String savePath
			// * 한 폴더에 저장 가능한 파일 개수는 65000개
			
			// >> 웹컨테이너(WebContent) 경로 안의 resources 폴더까지의 경로 추출(물리적 경로)		/ : WebContent
			//String resources = request.getSession().getServletContext().getRealPath("/resources");
			// System.out.println(resources);
			// C:\webserver_workspace2\jspProject\WebContent\resources
			
			// 실제 파일이 저장될 경로
			String savePath = resources + "\\board_upfiles\\";
			// System.out.println(savePath);
			// C:\webserver_workspace2\jspProject\WebContent\resources\board_upfiles\
			
			
			/*
			 * 2. 전달된 파일명 수정 및 서버에 업로드 작업
			 * 
			 * > HttpServletRequest  --> MultipartRequest로 변환
			 *
			 * *new DefaultFileRenamePolicy() : 파일명 수정해주는 내부클래스
			 * 
			 * 해당 MultupartRequest 객체를 생성해줌
			 * MultipartRequest multiRequest = 
			 * 	  new MultipartRequest(request, 저장할폴더경로, 파일용량제한, 인코딩값, new DefaultFileRenamePolicy());
			 * 
			 * @@위 구문 실행되는 순간(객체 생성되는 순간) 전달된 파일들이 지정한 폴더에 업로드 됨@@
			 * --> 즉, 문제가 있든 없든 무조건 서버에 업로드됨
			 * --> db에 값을 넣는 과정 중 문제가 생길 경우(제대로 insert가 안됐을경우) 해당 파일은 삭제되도록 함
			 * 
			 * #사용자가 올린 파일 원본명 그대로 서버에 업로드하지 않는것이 원칙
			 * --> 같은 파일명이 있을 경우 덮어씌워질 수 있고, 
			 * 	      파일명에 한글/특수기호/띄어쓰기 포함된 경우 서버에 따라 문제 발생할 수 있음
			 * 
			 * 기본적으로 제공하는 DefaultFileRenamePolicy 객체에서 기본적인 수정작업은 해줌
			 * ex) aaa.zip  aaa1.zip  aaa2.zip ... 
			 * (동일한 파일명으로 들어올 경우,숫자부여해줌)
			 * 
			 * 직접 rename해볼것. (나만의 RenamePolicy정의)
			 */
			
			MultipartRequest multiRequest = 
					new MultipartRequest(request, savePath, maxSize, 
							"UTF-8",new MyFileRenamePolicy());
			
			/*
			 * 3. DB에 저장할 데이터들 뽑아서 vo에 담기
			 * > 글제목, 글내용, 카테고리, 작성자회원번호는 Board테이블에 insert
			 * > 넘어온 첨부파일이 있을 경우 원본명, 수정명, 저장경로는 Attachment테이블에 insert
			 */
			
			// 3_1. board 테이블에 insert할 값 뽑아서 Board객체에 담기
			String category = multiRequest.getParameter("category"); //"10"
			String title = multiRequest.getParameter("title");
			String content = multiRequest.getParameter("content");
			
			// session에 담긴 loginUser값 가져오기,형변환,전체 묶어서 getter메소드를 통해 userNo값 가져오기
			int userNo = ((Member)request.getSession().getAttribute("loginUser")).getUserNo();
			
			Board b = new Board();
			
			// Board객체 생성 후, 사용자가 입력한 값들 담기
			b.setCategoryNo(category);
			b.setBoardTitle(title);
			b.setBoardContent(content);
			b.setBoardWriter(String.valueOf(userNo));//userNo값 문자열로 변환
			
			// 3-2. Attachment테이블에 insert할 원본명,수정명,폴더경로 Attachment객체에 담기
			//		(첨부파일이 있다면)
			Attachment at = null;
			
			// 첨부파일이 넘어왔을경우 at객체 생성
			// 원본명 : getOriginFileName("키")
			// 		  "upfile"로 넘어온 키값에 value가 null이 아닐경우(파일이 있을경우)
			if(multiRequest.getOriginalFileName("upfile") != null) {
				
				at = new Attachment();
				
				// 원본명 : getOriginFileName("키")
				// "upfile"의 value로 넘어온 값을 at에 담음
				at.setOriginName(multiRequest.getOriginalFileName("upfile"));
				
				// 수정명 : getFilesystemName("키")
				at.setChangeName(multiRequest.getFilesystemName("upfile"));
				
				// 파일이 저장된 경로
				at.setFilePath(savePath);
			}
			
			// 4. 게시판 작성용 서비스 요청(b, at)
			int result = new BoardService().insertBoard(b,at);
			
			if(result>0) { //성공
				
				request.getSession().setAttribute("msg", "게시글 등록성공");
				// 갱신된 게시판 1번페이지로 재요청
				response.sendRedirect("list.bo?currentPage=1"); 
				
			}else { //실패
				
				// db insert 실패했을경우에도 서버에 무조건 파일이 업로드되어있기때문에
				// 해당 파일 삭제해주는 과정 필요
				if(at !=null) { //첨부된 파일이 있었을경우
					// 삭제할 File객체 생성 (java.io.File)
					// 해당 파일이 저장된 경로에 파일명(실제 저장된파일명)
					File deleteFile = new File(savePath + at.getChangeName());
					deleteFile.delete();
				}
				
				request.setAttribute("msg", "게시글 등록 실패!");
				RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
				view.forward(request, response);
			}
			
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
