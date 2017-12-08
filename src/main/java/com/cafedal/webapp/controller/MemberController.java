package com.cafedal.webapp.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cafedal.webapp.dao.MemberCafeDao;
import com.cafedal.webapp.dao.MemberDao;
import com.cafedal.webapp.dao.MypageDao;
import com.cafedal.webapp.entity.Member;
import com.cafedal.webapp.entity.MemberCafe;
import com.cafedal.webapp.entity.Mypage;
import com.cafedal.webapp.entity.ResultMessage;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private MemberCafeDao memberCafeDao;
	
	@Autowired
	private MypageDao mypageDao;
	
	@RequestMapping(value="login")
	public String login() { 
		
		return "member.login";
	}
	
	@RequestMapping(value="login2")
	public String login2() { 
		
		return "member.login2";
	}
	
	
	@RequestMapping(value="idpwdFind", method = RequestMethod.GET)
	public String idpwdFind(String id, String name, String mail, Model model, HttpServletRequest request) throws IOException {
	
	/*System.out.printf("메일이랑 이름:" +mail,name);
	
	List<Member> list = memberDao.getId(name, mail);
		
	model.addAttribute("list", list);*/
		
	return "member.idpwdFind";
    }

	@RequestMapping(value="idpwdFind", method = RequestMethod.POST)
	public String idpwdFind(String id, String mail, String name, HttpServletResponse response) throws IOException {
	
		System.out.printf("아이디1:", id);
		System.out.printf("이름1:" + name);
		System.out.printf("메일1:" + mail);
	    return "redirect: idFind";
	}
		
	@RequestMapping(value="idFind", method = RequestMethod.GET)
	public String idFind(Member member, @RequestParam(value="name") String name, @RequestParam(value="mail") String mail, Model model, HttpServletRequest request) throws IOException {
		
		System.out.printf("이름2:" + name);
		System.out.printf("메일2:" + mail);
		
			
		model.addAttribute("list", memberDao.getId(name, mail));
			
		return "member.idFind";
	}
	
	@RequestMapping(value="pwdFind", method = RequestMethod.GET)
	public String pwdFind(Member member, @RequestParam("id") String id, @RequestParam(value="name") String name, @RequestParam(value="mail") String mail, Model model, HttpServletRequest request) throws IOException {
		
		System.out.printf("아이디3:" + id);
		System.out.printf("이름3:" + name);
		System.out.printf("메일3:" + mail);
		
			
		model.addAttribute("list", memberDao.getPwd(id, name, mail));
			
		return "member.pwdFind";
	}
/*
	@RequestMapping(value="idFind", method = RequestMethod.GET)
		public String idFind(String id, String name, String mail, Model model, HttpServletRequest request) throws IOException {
		
		System.out.printf("메일이랑 이름:" +mail,name);
		
		List<Member> list = memberDao.getId(name, mail);
			
		model.addAttribute("list", list);
			
		return "member.idFind";
	}*/
	
	@RequestMapping(value="idFind", method = RequestMethod.POST)
	public String idFind(String id, String name, String mail, HttpServletRequest request) throws IOException {

	
	return "redirect:idFind";
}
	
	@RequestMapping(value="joinHello")
	public String joinHello() { 
		
		return "member.joinHello";
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String join( Member member, MemberCafe memberCafe, HttpServletRequest request) throws IOException {

		/*int row = memberDao.insert(member);*/
		
		/*String cafes = "1,2,3,4,5,6";*/
		String cafes = member.getCafes();
		String[] cafecode = cafes.split(",");
		
		memberDao.insert(member);
		
		for(int i=0; i<cafecode.length; i++)
			memberCafeDao.insert(member.getId(), cafecode[i]);
		
		return "redirect:joinHello";

	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {

		return "member.join";
	}
	
	@RequestMapping(value="sameCheckId", method=RequestMethod.POST)
	@ResponseBody
	public ResultMessage sameCheckId(Member member) {
		
		ResultMessage resultMsg = null;
		int selectCnt = 0;
		
		try {
			selectCnt = memberDao.sameCheckId(member);
			if(selectCnt == 0)
				resultMsg = new ResultMessage("false");
			else
				resultMsg = new ResultMessage("true");
		} catch (Exception e) {
			e.printStackTrace();
			resultMsg = new ResultMessage("Fail");
		}
		return resultMsg;
	}	
}
