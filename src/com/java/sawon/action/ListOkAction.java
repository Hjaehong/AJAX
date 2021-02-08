package com.java.sawon.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONValue;

import com.java.command.Command;
import com.java.sawon.dao.SawonDao;
import com.java.sawon.dto.DeptDto;
import com.java.sawon.dto.EmpDto;

public class ListOkAction implements Command {

	@Override
	public String actionDo(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		String departmentName=request.getParameter("departmentName");
		logger.info(logMsg + departmentName);
		
		List<EmpDto> sawonList=SawonDao.getInstance().select(departmentName);
		logger.info(logMsg + sawonList.size());
		
		JSONArray jsonArray = new JSONArray();
		
		if(sawonList != null) {
			for(int i=0;i<sawonList.size();i++) {
				EmpDto empDto = sawonList.get(i);
				DeptDto deptDto = empDto.getDeptDto();
				
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("employee_id",empDto.getEmployee_id());
				map.put("first_name",empDto.getFirst_name());
				map.put("hire_date",empDto.getHire_date());
				map.put("job_id",empDto.getJob_id());
				map.put("salary",empDto.getSalary());
				map.put("department_id",empDto.getDepartment_id());
				map.put("department_name",deptDto.getDepartment_name());
				
				jsonArray.add(map);
			}
			
			HashMap<String, Object> jsonMap = new HashMap<String, Object>();
			jsonMap.put("sawon", jsonArray);
			
			String jsonText = JSONValue.toJSONString(jsonMap);
			logger.info(logMsg+jsonText);
			
			response.setContentType("application/x-json;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print(jsonText);
		}
		return null;
	}

}
