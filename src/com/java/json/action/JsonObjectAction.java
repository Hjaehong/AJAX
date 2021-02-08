package com.java.json.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;

public class JsonObjectAction implements Command{

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// DB
		int bunho=1;
		String iurm="홍길동";
		float average=88.8f;
		
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("bunho", bunho);
		map.put("iurm", iurm);
		map.put("average", average);
		
		String jsonText=JSONValue.toJSONString(map);
		logger.info(logMsg + jsonText);
		
		if(jsonText !=null) {
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(jsonText);
		}
		
		return null;
	}

}







