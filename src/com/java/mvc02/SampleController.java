package com.java.mvc02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleController
 */

// FrontController Pattern : 사용자의 모든 요청을 단 하나의 서블릿에서 처리하는 형태
public class SampleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url=request.getRequestURL();
		String uri=request.getRequestURI();
		String servletPath=request.getServletPath();
		System.out.println("url:" + url);
		System.out.println("uri:" + uri);
		System.out.println("servletPath:" + servletPath);
		
		String view=null;
		if(servletPath.equals("/write.a")) {
			// 해당 클래스 호출 - DTO, DAO Write Class
			System.out.println("쓰기");
			view="/MVC/write.jsp";
			
		}else if(servletPath.equals("/read.a")) {     // Read Class
			System.out.println("읽기");
			view="/MVC/read.jsp";
			
		}else if(servletPath.equals("/list.a")) {        // List Class
			System.out.println("목록보기");
			view="/MVC/list.jsp";
		}
		
		RequestDispatcher dis=request.getRequestDispatcher(view);
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}












