package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReadAction implements Action{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {

		request.setAttribute("check", "OK");
		
		return "/MVC/read.jsp";
	}

}
