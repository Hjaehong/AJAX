package com.java.command;

import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public interface Command {     // 멤버변수 static final 
	public Logger logger=Logger.getLogger(Command.class.getName());
	
	public String logMsg="MyLogMsg--------";     // public static final String logMsg="MyLogMsg--------"; 
	
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}
