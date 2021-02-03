package com.java.mvc04;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public String actionDo(HttpServletRequest request, HttpServletResponse response);
	
	// Command Pattern : 사용자의 요청을 처리하는 클래스로써, 인터페이스로 구성한다. 
}
