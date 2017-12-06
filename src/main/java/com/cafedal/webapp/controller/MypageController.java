package com.cafedal.webapp.controller;


import java.io.IOException;
import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafedal.webapp.dao.MemberCafeDao;
import com.cafedal.webapp.dao.MemberDao;
import com.cafedal.webapp.dao.MypageDao;
import com.cafedal.webapp.entity.DcCom;
import com.cafedal.webapp.entity.DcInfo;
import com.cafedal.webapp.entity.Member;
import com.cafedal.webapp.entity.MemberCafe;
import com.cafedal.webapp.entity.MyDcInfoView;
import com.cafedal.webapp.entity.Mypage;


@Controller
@RequestMapping("/mypage/*")
public class MypageController {
   
   @Autowired
   private MypageDao mypageDao;
   
   @Autowired
   private MemberDao memberDao;
   
   @Autowired
   private MemberCafeDao memberCafeDao;
	
   @RequestMapping(value="edit", method = RequestMethod.GET)
   public String edit(Mypage mypage, Principal principal, Model model, HttpServletRequest request) throws IOException {
      
	   String id = principal.getName();
	   /*String memberid = principal.getName();
	   
	   System.out.println("¸â¹ö¾ÆÀÌµð : " +memberid);*/
	   
	   List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);
	   
       return "mypage.edit";
   }
   
   @RequestMapping(value="edit", method = RequestMethod.POST)
   public String edit(@RequestParam("id") String id, Model model, HttpServletRequest request) {
         
	   return "redirect:../edit2";
   }
   
   @RequestMapping(value="edit2", method = RequestMethod.GET)
   public String edit2(@RequestParam("id") String id, Model model){

	   model.addAttribute("list", memberDao.getib(id));

       return "mypage.edit2";
   }
   
   @RequestMapping(value="edit2", method = RequestMethod.POST)
	public String edit2(@RequestParam("id") String id, Member member, MemberCafe memberCafe,
			String memberid, Mypage mypage, HttpServletRequest request) throws IOException {
		
	    int row = memberDao.update(member);
	  
		String cafes = member.getCafes();
		String[] cafecode = cafes.split(",");
		 
		// memberCafeDao.update(memberCafe);
		int row2 = memberCafeDao.delete(member.getId(), cafecode[0]);
	
		for(int i=0; i<cafecode.length; i++) {
			memberCafeDao.insert(member.getId(), cafecode[i]);
		}
	   return "redirect:../mypage/edit";		
	}
   
   /*@RequestMapping(value="mydcinfo", method = RequestMethod.GET)
   public String mydcinfo(Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   String id = principal.getName();
	   List<MyDcInfoView> list = mypageDao.myDcInfoList(id);
	   model.addAttribute("list", list);
	   
	   System.out.println(id);
       return "mypage.mydcinfo";
   }*/
   
   @RequestMapping(value="mydcinfo", method = RequestMethod.GET)
   public String mydcinfo(@RequestParam(value = "p", defaultValue = "1") Integer page,
		   @RequestParam(value = "f", defaultValue = "title") String field,
		   @RequestParam(value = "q", defaultValue = "") String query,
		   Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   
	   List<MyDcInfoView> list = mypageDao.myDcInfoList(page, field, query, principal.getName());
	   model.addAttribute("list", list);
	   

       return "mypage.mydcinfo";
   }
   
   @RequestMapping(value="mydcinfo", method = RequestMethod.POST)
   public String mydcinfo(@RequestParam("id") String id, Model model, HttpServletRequest request) {
         
	   return "redirect:../mydcinfo";
   }
   
   @RequestMapping(value="delete", method = RequestMethod.GET)
   public String delete(Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   String id = principal.getName();
	   
	   List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);

       return "mypage.delete";
   }
   
   @RequestMapping(value="delete", method = RequestMethod.POST)
   public String delete(Member member, MemberCafe memberCafe, Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   String id = principal.getName();
	   
	  /* List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);*/
	   
	   int row = memberCafeDao.delete(id);
	   int row2 = memberDao.delete(id);
	   
	   System.out.println(id);

	   return "redirect:../mypage/deleteOk";
   }
   
   @RequestMapping(value="deleteOk")
	public String deleteOk() { 
		
		return "mypage.deleteOk";
	}
   
   @RequestMapping(value="myp", method = RequestMethod.GET)
   public String myp(@RequestParam(value = "p", defaultValue = "1") Integer page,
		   @RequestParam(value = "f", defaultValue = "title") String field,
		   @RequestParam(value = "q", defaultValue = "") String query, Member member, MemberCafe memberCafe,
			String memberid, Mypage mypage, Principal principal, Model model, HttpServletRequest request) throws IOException {
      
	   String id = principal.getName();
	   /*String memberid = principal.getName();
	   
	   System.out.println("¸â¹ö¾ÆÀÌµð : " +memberid);*/
	   
	   List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);
	   /*model.addAttribute("list", memberDao.getib(id));*/
	   
	   List<MyDcInfoView> list1 = mypageDao.myDcInfoList(page, field, query, principal.getName());
	   model.addAttribute("list1", list1);
	   
       return "mypage.myp";
   }
   
   @RequestMapping(value="myp", method = RequestMethod.POST)
   public String myp(Member member, MemberCafe memberCafe, Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   String id = principal.getName();
	   
	  /* List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);*/	
	   
	    int row = memberDao.update(member);
		  
		String cafes = member.getCafes();
		String[] cafecode = cafes.split(",");
		 
		// memberCafeDao.update(memberCafe);
		int row2 = memberCafeDao.delete(member.getId(), cafecode[0]);
	
		for(int i=0; i<cafecode.length; i++) {
			memberCafeDao.insert(member.getId(), cafecode[i]);
		}

	   return "redirect:../mypage/myp";
   }
   
   @RequestMapping(value="mypd", method = RequestMethod.GET)
	public String mypd(Mypage mypage, Principal principal, Model model, HttpServletRequest request) throws IOException {
	      
		String id = principal.getName();
		
		 List<Member> list = memberDao.getUseList(id);
		 List<Mypage> listcafe = mypageDao.getUseListCafe(id);
		   
		 model.addAttribute("list", list);
	     model.addAttribute("listcafe", listcafe);
		
		return "mypage.mypd";
	}
   
   @RequestMapping(value="mypd", method = RequestMethod.POST)
   public String mypd(Member member, MemberCafe memberCafe, Model model, HttpServletRequest request, Principal principal) throws IOException {
	   
	   String id = principal.getName();
	   
	  /* List<Member> list = memberDao.getUseList(id);
	   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   model.addAttribute("listcafe", listcafe);*/
	   
	   int row = memberCafeDao.delete(id);
	   int row2 = memberDao.delete(id);

	   return "redirect:../mypage/deleteOk";
   }
   
   /*@RequestMapping(value="NewFile", method = RequestMethod.POST)
   public String NewFile(@RequestParam("id") String id, Model model, HttpServletRequest request) {
         
	   return "redirect:../NewFile";
   }*/
}
   