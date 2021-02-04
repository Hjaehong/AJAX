package com.java.json.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
// 2021-02-03
public class JsonAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//		logger.info(logMsg + "OK");
		request.setCharacterEncoding("utf-8");
		String msg = request.getParameter("msg");
		logger.info(logMsg + msg);
		
		if(msg.equals("obj")) {
			return "/WEB-INF/views/json/JsonObj.jsp";
			// 21-02-04
		}else if(msg.equals("arr")) {
			return "/WEB-INF/views/json/JsonArr.jsp";
		}else if(msg.equals("mix")) {
			return "/WEB-INF/views/json/JsonMix.jsp";
		}else {			
			return null;			
		}
	}

}
