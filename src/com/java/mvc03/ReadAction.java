package com.java.mvc03;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReadAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// request 요청 데이터 - DB (DTO, DAO) - 결과 데이터 보내준다.
		
		request.setAttribute("check", "OK");
		
		return "/MVC/read.jsp";
	}
}
