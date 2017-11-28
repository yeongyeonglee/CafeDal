package com.cafedal.webapp.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafedal.webapp.dao.CalendarDao;
import com.cafedal.webapp.entity.CalendarView;
import com.cafedal.webapp.entity.DateData;
import com.cafedal.webapp.entity.DcInfo;

@Controller
@RequestMapping("/main/*")
public class CalendarController {

	@Autowired
	private CalendarDao calendarDao;

	@RequestMapping(value="calendar")
	public String calendar(
			DateData dateData, Model model, HttpServletRequest request, Principal principal){
		
		String id = principal.getName();
		
		Calendar cal = Calendar.getInstance();
		DateData calendarData;
		//�˻� ��¥
				if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){
					dateData = new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null);
				}
				//�˻� ��¥ end

				Map<String, Integer> today_info =  dateData.today_info(dateData);
				List<DateData> dateList = new ArrayList<DateData>();
				
				//�������� �޷� ������ ����Ʈ�� ������ ���� ����
				//�ϴ� ���� �ε������� �ƹ��͵� ���� ������ ����
				for(int i=1; i<today_info.get("start"); i++){
					calendarData= new DateData(null, null, null, null);
					dateList.add(calendarData);
				}
				
				//��¥ ����
				for (int i = today_info.get("startDay"); i <= today_info.get("endDay"); i++) {
					if(i==today_info.get("today")){
						calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "today");
					}else{
						calendarData= new DateData(String.valueOf(dateData.getYear()), String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date");
					}
					dateList.add(calendarData);
				}

				//�޷� ��� �� �����ͷ� ����
				int index = 7-dateList.size()%7;
				
				if(dateList.size()%7!=0){
					
					for (int i = 0; i < index; i++) {
						calendarData= new DateData(null, null, null, null);
						dateList.add(calendarData);
					}
				}
				
				System.out.println(dateList);
				
				//�迭�� ����
				model.addAttribute("dateList", dateList);		//��¥ ������ �迭
				model.addAttribute("today_info", today_info);
		


		List<CalendarView> list = calendarDao.getUseList(id);

		model.addAttribute("list", list);

		System.out.println("id ������ : " + id);

		return "main.calendar";
	}
}

