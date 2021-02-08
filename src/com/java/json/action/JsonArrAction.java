package com.java.json.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;

public class JsonArrAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {		
		// DB --> DTO / ArrayList 
		ArrayList<JsonData> dataList=new ArrayList<JsonData>();
		dataList.add(new JsonData("홍길동", "010-123-3333", "서울시 강남구"));
		dataList.add(new JsonData("펭수", "010-123-4444", "서울시 역삼1동"));
		dataList.add(new JsonData("꼰대희", "010-123-5555", "서울시 논현동"));
		logger.info(logMsg + dataList.size());
		
		// JAVA MAP --> JSON Array 
		JSONArray jsonArray=new JSONArray();
		
		for(int i=0;i<dataList.size();i++) {
			JsonData data=dataList.get(i);
			
			HashMap<String, Object> map=new HashMap<String, Object>();
			map.put("name", data.getName());
			map.put("phone", data.getPhone());
			map.put("address", data.getAddr());
			
			jsonArray.add(map);
		}
		
		HashMap<String, Object> jsonMap=new HashMap<String, Object>();
		jsonMap.put("data", jsonArray);
		
		String jsonText=JSONValue.toJSONString(jsonMap);
		logger.info(logMsg + jsonText);
		
		if(jsonText !=null) {
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(jsonText);
		}
		
		return null;
	}
}






