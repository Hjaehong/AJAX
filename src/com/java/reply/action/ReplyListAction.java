package com.java.reply.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.reply.dao.ReplyDao;
import com.java.reply.dto.ReplyDto;

public class ReplyListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 기존 데이터

		List<ReplyDto> replyList = ReplyDao.getInstance().getList();
		logger.info(logMsg + replyList.size());

		if (replyList.size() != 0) {
			request.setAttribute("replyList", replyList);
		}

		return "/WEB-INF/views/reply/replyList.jsp";
	}

}
