
package com.java.json.action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;

public class JsonArrayAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// DB --> DTO --> ArrayList 
		// dto(임시)
		ArrayList<JsonData> dataList = new ArrayList<JsonData>();
		dataList.add(new JsonData("홍길동","010-132-3333","경기도 시흥시"));
		dataList.add(new JsonData("임꺽정","010-456-6644","경기도 부천시"));
		dataList.add(new JsonData("아무개","010-789-7878","경기도 성남시"));
		
		// JAVA MAP --> JSON Array
		JSONArray jsonArray = new JSONArray();
		for(int i=0;i<dataList.size();i++) {
			JsonData data=dataList.get(i);
			
			// key , value로 변경하기 위한 HashMap (JAVA MAP)
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("name", data.getName());
			map.put("phone", data.getPhone());
			map.put("address", data.getAddr());
			
			
			jsonArray.add(map);
		}
		
		HashMap<String, Object> jsonMap = new HashMap<String, Object>();
		jsonMap.put("data", jsonArray);
		
		// 텍스트 형식으로 보내기 위한 설정
		String jsonText = JSONValue.toJSONString(jsonMap);
		logger.info(logMsg + jsonText);
		
		if(jsonText != null) {
			// 응답하는 contentType이 json
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print(jsonText);
		}
		
		return null;
	}

}
