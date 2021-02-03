package com.java.mvc03;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) {
		// 한글작업, 사용자 요청 데이타 받는다 (글작성, 글제목, 글번호, 글내용, 작성날짜, 작성자.......) --> DTO, DAO (DB)
		
		System.out.println("WriteAction");
		
		// 작성 성공, 실패 메시지 가지고 해당 뷰(write.jsp) 이동
		request.setAttribute("msg", "성공");
		
		return "/MVC/write.jsp";
	}
}
