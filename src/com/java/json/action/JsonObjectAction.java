package com.java.json.action;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.java.command.Command;

public class JsonObjectAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		//DB
		int bunho=1;
		String iurm="홍길동";
		float average=88.8f;
		HashMap<String, Object> map=new HashMap<String, Object>();
		map.put("bunho", bunho);
		map.put("iurm", iurm);
		map.put("average", average);
		
		// map 방식의 데이터를 text로 변환해서 보낸다.
		String jsonText=JSONValue.toJSONString(map);
		// stack? 맨 마지막에 저장한 데이터가 맨앞으로 온다.
		logger.info(logMsg + "jsonText : " + jsonText);
		
		if(jsonText != null) {
			// 응답하는 contentType이 json
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(jsonText);
		}
			
		// 페이지 이동이 없기 때문에 null값 유지
		return null;
	}

}
