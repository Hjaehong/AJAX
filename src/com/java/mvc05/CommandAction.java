package com.java.mvc05;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandAction {
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
