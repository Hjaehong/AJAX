package com.java.mvc05;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CmdController
 */
@WebServlet("*.gtec")
public class CmdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Object> commandMap=new HashMap<String, Object>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CmdController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
   
	@Override
	public void init() throws ServletException {
		ListAction list=new ListAction();
		commandMap.put("/list.gtec", list);
		
		ReadAction read=new ReadAction();
		commandMap.put("/read.gtec", read);
		
		WriteAction write=new WriteAction();
		commandMap.put("/write.gtec", write);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd=request.getServletPath();
		System.out.println("cmd:"  + cmd);
		
		String view=null;
		try {
			CommandAction action=(CommandAction) commandMap.get(cmd);
			view=action.actionDo(request, response);
		}catch(Throwable e) {
			e.printStackTrace();
		}
		
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








