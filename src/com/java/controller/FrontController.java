package com.java.controller;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;


/**
 * Servlet implementation class FrontController
 */
@WebServlet(urlPatterns="*.stu", 
	               initParams=@WebInitParam(name="configFile", value="/WEB-INF/URICommand.properties"))
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Object> commandMap=new HashMap<String, Object>();

    public FrontController() { super(); }
    
	@Override
	public void init(ServletConfig config) throws ServletException {
		String configFile=config.getInitParameter("configFile");
		Command.logger.info(Command.logMsg + configFile);
		
		FileInputStream fis=null;
		BufferedInputStream bis=null;
		Properties pro=new Properties();
		
		try {
			String path=config.getServletContext().getRealPath(configFile);
			fis=new FileInputStream(path);
    		bis=new BufferedInputStream(fis);
    		
    		pro.load(bis);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try{
	    		if(bis != null) bis.close();
	    		if(fis != null) fis.close();
    		}catch(Exception e){
    			e.printStackTrace();
    		}
		}
		
		Iterator<Object> keyIter=pro.keySet().iterator();
    	while(keyIter.hasNext()){
    		String key=(String)keyIter.next();
    		String value=pro.getProperty(key);
    		
    		Command.logger.info(Command.logMsg + key);
    		Command.logger.info(Command.logMsg + value + "\n");
    		
    		try {
    			Class<?> hClass=Class.forName(value);
    			Object hObj=hClass.newInstance();
    			
    			commandMap.put(key, hObj);
    		}catch(Exception e) {
    			e.printStackTrace();
    		}
    	}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd=request.getServletPath();
		Command.logger.info(Command.logMsg +cmd);
		
		String viewPage=null;
		
		try {
			Command com=(Command) commandMap.get(cmd);
			viewPage=com.actionDo(request, response);
			
			Command.logger.info(Command.logMsg +viewPage);
		}catch(Throwable e) {
			e.printStackTrace();
		}
		
		if(viewPage !=null) {
			RequestDispatcher rd=request.getRequestDispatcher(viewPage);
			rd.forward(request, response);
		}
		
		// template 사용시
		/*RequestDispatcher rd=null;
		
		if(viewPage !=null) {
			if(viewPage.equals("/WEB-INF/views/member/idCheck.jsp")|| viewPage.equals("/WEB-INF/views/member/zipcode.jsp")) {
				rd=request.getRequestDispatcher(viewPage);
			}else {
				request.setAttribute("viewPage", viewPage);
				rd=request.getRequestDispatcher("/template/tempIndex.jsp");
			}
			rd.forward(request, response);
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}







