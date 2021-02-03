package com.java.mvc03;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// 요청 - DB(DTO, DAO - 결과 데이터 보내준다.
		
		int su=10;
		request.setAttribute("su", su);
		
		return "/MVC/list.jsp";
	}
}
