package com.kh.ergate.test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.FileRenamePolicy;

/**
 * Servlet implementation class testS
 */
@WebServlet("/testFileload.bo")
public class testS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public testS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// request.setCharacterEncoding("utf-8"); Multipart생성 시 인코딩 하므로 필요음슴
		// 업로드된 파일 담을 곳 알아내기 -> ajax로 넘어온 request객체 + savePath(저장할 경로) + 인코딩 타입(UTF-8) 지정해서 Multipart타입으로 request객체 변환하기
		String resources = request.getSession().getServletContext().getRealPath("/resources"); 
		String savePath = resources + "\\testFiles\\";
		MultipartRequest multiRequest = new MultipartRequest(request, savePath, "UTF-8"); // 여기서 request -> MultiPartRequest로 바뀝니다.
		
		//제목 + 내용 찍어보기. 잘 찍힘 ㅇㅇ 근데 ajax에서 input 요소 담을 때 파일타입으로 담다보니 넘어올때 배열로 담겨서 옴
		//배열에 차곡차곡 안담기고 배열의 [0]번 인덱스에 모든 내용이 다 담겨서 넘어옴, 그래서 title[0] 이런식으로 빼야함니다. 담을 때도 String title[] 이런식으로 변수 만들구요
		String title[] = multiRequest.getParameterValues("boardTitle");		
		String content[] = multiRequest.getParameterValues("boardContent");
		
		
		System.out.println("제목값은? : " + title[0]);
		System.out.println("내용값은? : " + content[0]);
		
		//System.out.println("파일이름은? : " + originName);
		
		int result = 1;	// 실제로 기능 구현할땐 여기에 DB에 insert 하고 반환된 int값을 넣어줘야함(ex: int result = new boardService().insertBoard(~~) 이런식으로?)
		
		//ajax로 요청했을땐 result값이 돌아와야 ajax에서 성공 / 실패 판단하니까 result를 돌려줘야함
		PrintWriter out = response.getWriter();
		out.print(result);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
