package com.java.reply.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.reply.dao.ReplyDao;

public class ReplyDeleteAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		int bunho = Integer.parseInt(request.getParameter("bunho"));
		logger.info(logMsg + "ReplyDelete bunho : " + bunho);

		int check=ReplyDao.getInstance().delete(bunho);
		logger.info(logMsg + "ReplyDelete check : " + check);
		
		if(check > 0) {
			response.setContentType("application/txt;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(bunho);
		}
		
		return null;
	}

}
