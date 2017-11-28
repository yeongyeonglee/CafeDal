package com.cafedal.webapp.controller;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.cafedal.webapp.dao.NoticeDao;
import com.cafedal.webapp.entity.NoticeView;

@Controller
@RequestMapping("/customer/*")
public class CustomerController {
	
	@Autowired
	private NoticeDao noticeDao;
	
	@RequestMapping("notice")
	public String notice(
			@RequestParam(value="p", defaultValue="1") Integer page,
			@RequestParam(value="f", defaultValue="title") String field,
			@RequestParam(value="q", defaultValue="") String query, Model model) {
		
		//model.addAttribute("list", noticeDao.getList(page, field, query));
		
		List<NoticeView> list = noticeDao.getList(page, field, query);
		
		model.addAttribute("list", list);
		
		
		/*String output = String.format("p:%s, q:%s", page, query);
		output += String.format("title : %s\n", list.get(0).getTitle());*/
		
		//return output;
		//return "customer/notice";
		
		return "customer.notice.list";
	}
	
}
