package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteAction implements Action{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// 요청 - DB(DTO, DAO) - 응답
		
		request.setAttribute("msg", "응답");
		
		return "/MVC/write.jsp";
	}

}
