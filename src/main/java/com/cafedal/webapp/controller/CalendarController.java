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
 
      List<CalendarView> list = calendarDao.getUseList(id);

      model.addAttribute("list", list);

      System.out.println("id ³ª¿À³Ä : " + id);

      return "main.calendar";
   }
   
   @RequestMapping(value="today")
	public String today() { 
		
		return "main.today";
	}
}
