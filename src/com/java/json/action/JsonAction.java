package com.java.json.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class JsonAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("utf-8");
		String msg=request.getParameter("msg");
		logger.info(logMsg + msg);
		
		if(msg.equals("obj")) {
			return "/WEB-INF/views/json/jsonObj.jsp";
		}else if(msg.equals("arr")){
			return "/WEB-INF/views/json/jsonArr.jsp";
		}else if(msg.equals("mix")){
			return "/WEB-INF/views/json/jsonMix.jsp";
		}else {
			return null;
		}
	}

}
