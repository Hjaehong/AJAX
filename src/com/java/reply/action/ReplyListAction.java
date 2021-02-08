package com.java.reply.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;

public class ReplyListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 기존 데이터
		
		return "/WEB-INF/views/reply/replyList.jsp";
	}

}
