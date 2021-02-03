package com.java.mvc03;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SampleCnt
 */
public class SampleCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampleCnt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd=request.getServletPath();
		System.out.println("cmd:" + cmd);
		
		String view=null;
		
		if(cmd.equals("/write.do")) {
			WriteAction write=new WriteAction();
			view=write.actionDo(request, response);
		}else if(cmd.equals("/read.do")) {
			ReadAction read=new ReadAction();
			view=read.actionDo(request, response);
		}else if(cmd.equals("/list.do")) {
			ListAction list=new ListAction();
			view=list.actionDo(request, response);
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
