package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction implements Action{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		int su=5;
		request.setAttribute("su", su);
		
		return "/MVC/list.jsp";
	}

}
