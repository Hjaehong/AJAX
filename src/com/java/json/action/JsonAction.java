package com.java.json.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class JsonAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		logger.info(logMsg + "OK");
		request.setCharacterEncoding("utf-8");
		String msg = request.getParameter("msg");
		logger.info(logMsg + msg);
		
		if(msg.equals("obj")) {
			return "/WEB-INF/views/JsonObj.jsp";
		}else {
			return null;			
		}
	}

}
