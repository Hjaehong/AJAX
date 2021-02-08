package com.java.sawon.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.command.Command;
import com.java.sawon.dao.SawonDao;

public class ListAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		List<String> deptList=SawonDao.getInstance().deptList();
 		logger.info(logMsg+deptList.size());
 		
 		// 페이지의 변화가 있음
 		request.setAttribute("deptList", deptList);

		return "/WEB-INF/views/sawon/list.jsp";
	}

}
