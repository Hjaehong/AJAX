package com.java.reply.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.reply.dao.ReplyDao;
import com.java.reply.dto.ReplyDto;

public class ReplyWriteAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String writeReply = request.getParameter("writeReply");
		
		logger.info(logMsg + writeReply);
		
		ReplyDto replyDto = new ReplyDto();
		replyDto.setLine_reply(writeReply);
		
		int check = ReplyDao.getInstance().insert(replyDto);
		logger.info(logMsg+check);
		
		return null;
	}

}
