package com.java.json.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;

public class JsonMixAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		int bunho = 1;
		String irum = "재홍";
		float ki = 170f;
		
		ArrayList<JsonData> dataList = new ArrayList<JsonData>();
		dataList.add(new JsonData("홍길동","010-132-3333","경기도 시흥시"));
		dataList.add(new JsonData("임꺽정","010-456-6644","경기도 부천시"));
		dataList.add(new JsonData("아무개","010-789-7878","경기도 성남시"));
		logger.info(logMsg+dataList.size());
		
		JSONArray jsonArray = new  JSONArray();
		for(int i=0;i<dataList.size();i++) {
			JsonData data = dataList.get(i);
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("name", data.getName());
			map.put("phone", data.getPhone());
			map.put("address", data.getAddr());
			
			jsonArray.add(map);
		}
		HashMap<String, Object> jsonMap = new HashMap<String, Object>();
		// map 방식은 들어 올때 순서 대로 들어오지 않는다.
		jsonMap.put("bunho", bunho);
		jsonMap.put("irum", irum);
		jsonMap.put("ki", ki);
		jsonMap.put("data", jsonArray);
		
		// String으로 변환
		String jsonText=JSONValue.toJSONString(jsonMap);
		logger.info(logMsg + jsonText);
		
		if(jsonText != null) {
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonText);
		}
		
		return null;
	}

}
