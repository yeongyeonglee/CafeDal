package com.cafedal.webapp.controller.admin;


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

import com.cafedal.webapp.dao.ManageDao;
import com.cafedal.webapp.dao.MemberCafeDao;
import com.cafedal.webapp.dao.MemberDao;
import com.cafedal.webapp.dao.MypageDao;
import com.cafedal.webapp.entity.DcCom;
import com.cafedal.webapp.entity.DcInfo;
import com.cafedal.webapp.entity.Manage;
import com.cafedal.webapp.entity.Member;
import com.cafedal.webapp.entity.MemberCafe;
import com.cafedal.webapp.entity.Mypage;
import com.cafedal.webapp.entity.UseCom;

@Controller
@RequestMapping("/admin/manage/*")
public class ManageController {
   
   @Autowired
   private ManageDao manageDao;
   
   @Autowired
   private MemberDao memberDao;
   
   @Autowired
   private MemberCafeDao memberCafeDao;
      
   @RequestMapping("list")
   public String list(@RequestParam(value = "p", defaultValue = "1") Integer page,
		   @RequestParam(value = "f", defaultValue = "id") String field,
		   @RequestParam(value = "q", defaultValue = "") String query,

		   Model model, HttpServletRequest request) throws IOException {
      
/*
	   List<Member> list = memberDao.getUseListRole(page, field);
*/

	   List<Member> list = memberDao.getUseListRole(page, field, query);

	   //List<Member> list = memberDao.getUseListRole(id);
	   //List<Manage> listcafe = manageDao.getUseListCafe(id);
	   
	   model.addAttribute("list", list);
	   
	   
       return "admin.manage.list";
   }

   
   @RequestMapping(value= "list2/{id}", method = RequestMethod.GET)
   public String edit(@PathVariable("id") String id, Model model, UseCom usecom,Principal principal) throws IOException {
      
	  
	   List<Member> list = memberDao.getUseListRole2(id);
	   model.addAttribute("n", memberDao.getib(id));
       return "admin.manage.list2";
   }
   
   @RequestMapping(value= "list2/{id}", method = RequestMethod.POST)
   public String edit(@PathVariable("id") String id, Member member, MemberCafe memberCafe, Model model, HttpServletRequest request, Principal principal) throws IOException {
	   		
	   		int row = memberDao.update(member);
			  
			String cafes = member.getCafes();
			String[] cafecode = cafes.split(",");
			 
			int row2 = memberCafeDao.delete(member.getId(), cafecode[0]);
		
			for(int i=0; i<cafecode.length; i++) {
				memberCafeDao.insert(member.getId(), cafecode[i]);
			}
	   
       return "redirect:../admin/manage/list";
   }
      

   
   /*@RequestMapping(value="list", method = RequestMethod.POST)
   public String edit(@RequestParam(value = "p", defaultValue = "1") Integer page,
		   @RequestParam(value = "f", defaultValue = "id") String field,
		   @RequestParam(value = "f", defaultValue = "") String query,
		   HttpServletRequest request) throws IOException {
      
	   
       return "admin.manage.list";
   }*/




	@RequestMapping("delete")
	public String noticeDel(HttpServletRequest request) {

		  /*String deleteArticleIds = request.getParameter("deleteArticleId");

		  memberDao.delete(deleteArticleIds);*/

		return "admin.manage.list" ;
	}

	
	   @RequestMapping(value="delete", method = RequestMethod.POST)
	   public String noticeDel(@RequestParam(value = "deleteArticleId", defaultValue = "") String id, Model model, Principal principal) throws IOException {
		   System.out.println("deletearticleIds: "+id);
		  /* List<Member> list = memberDao.getUseList(id);
		   List<Mypage> listcafe = mypageDao.getUseListCafe(id);
		   
		   model.addAttribute("list", list);
		   model.addAttribute("listcafe", listcafe);*/
		   
		   manageDao.delete(id);

		   return "redirect:list";
	   }
	   


   
}