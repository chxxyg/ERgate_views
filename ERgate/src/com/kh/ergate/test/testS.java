package com.kh.ergate.test;

import java.io.IOException;

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
		request.setCharacterEncoding("utf-8");
		String resources = request.getSession().getServletContext().getRealPath("/resources");
		String savePath = resources + "\\testFiles\\";
		MultipartRequest multiRequest = new MultipartRequest(request, savePath);
			String title[] = multiRequest.getParameterValues("boardTitle");		
			String content[] = multiRequest.getParameterValues("boardContent");
			
			
			System.out.println("제목값은? : " + title[0]);
			System.out.println("내용값은? : " + content[0]);
			// 졸라 힘들다... 일단 이렇게 해야 값을 뽑아오는데 utf-8이 안먹혀서 한글은 깨짐... 이유를 모르겠음.
			
		// 해당 부분은 GSON이나 JSON을 통해서 꼭 FormData 처리를 해야 함. 그래야 오류가 안난다.
		RequestDispatcher view = request.getRequestDispatcher("views/board/boardList.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
