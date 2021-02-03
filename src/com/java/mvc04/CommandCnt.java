package com.java.mvc04;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CommandCnt
 */
@WebServlet("*.action")
public class CommandCnt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Object> commandMap=new HashMap<String, Object>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommandCnt() {
        super();
        // TODO Auto-generated constructor stub
    }
    
   
	@Override
	public void init() throws ServletException {
		WriteAction write=new WriteAction();
		commandMap.put("/write.action", write);
		
		ListAction list=new ListAction();
		commandMap.put("/list.action", list);
		
		ReadAction read=new ReadAction();
		commandMap.put("/read.action", read);
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd=request.getServletPath();
		System.out.println(cmd);
		
		Action action=(Action) commandMap.get(cmd);   // /write.action, /list.action, /read.action
		String view=action.actionDo(request, response);
		
		if(view !=null) {
			RequestDispatcher dis=request.getRequestDispatcher(view);
			dis.forward(request, response);
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








