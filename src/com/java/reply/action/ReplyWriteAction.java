package com.java.reply.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.reply.dao.ReplyDao;
import com.java.reply.dto.ReplyDto;

public class ReplyWriteAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("UTF-8");
		String writeReply = request.getParameter("writeReply");

		logger.info(logMsg + "writeReply" + writeReply);

		ReplyDto replyDto = new ReplyDto();
		replyDto.setLine_reply(writeReply);

		int check = ReplyDao.getInstance().insert(replyDto);
		logger.info(logMsg + "check" + check);

		// 새로운 글 21-02-09 json
		if (check > 0) {
			int bunho = ReplyDao.getInstance().getBunho();

			// json으로 보내기
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bunho", bunho);
			map.put("writeReply", writeReply);

			String jsonText = JSONValue.toJSONString(map);
			logger.info(logMsg + "jsonText" + jsonText);
			
			if(jsonText != null) {
				response.setContentType("application/x-json;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.print(jsonText);
				
			}
		}

		return null;
	}

}
