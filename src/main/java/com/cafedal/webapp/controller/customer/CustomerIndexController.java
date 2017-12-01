package com.cafedal.webapp.controller.customer;


import java.io.IOException;
import java.security.Principal;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafedal.webapp.dao.CmtDao1;
import com.cafedal.webapp.dao.DcComDao;
import com.cafedal.webapp.dao.DcInfoDao;
import com.cafedal.webapp.entity.CmtView1;
import com.cafedal.webapp.entity.DcCom;
import com.cafedal.webapp.entity.DcInfo;


@Controller
@RequestMapping("/customer/dcinfo/sub/*")
public class CustomerIndexController  {

	  @Autowired
	   private DcInfoDao dcinfoDao;
	  @Autowired
	   private DcComDao dccomDao;
	  @Autowired
	   private CmtDao1 cmtDao1;
	  
	   @RequestMapping("gongcha")
	   public String notice(
	         @RequestParam(value="p", defaultValue="1") Integer page,
	         @RequestParam(value="f", defaultValue="dtitle") String field,
	         @RequestParam(value="q", defaultValue="") String query, Model model
	         ){
	      
	      List<DcInfo> list = dcinfoDao.getUseList(page, field, query);
	      
	      model.addAttribute("list", list);
	      
	      
	      
	      return "customer.dcinfo.sub.gongcha";
	   }
	   
	   @RequestMapping("starbucks")
	   public String notice2(
	         @RequestParam(value="p", defaultValue="1") Integer page,
	         @RequestParam(value="f", defaultValue="dtitle") String field,
	         @RequestParam(value="q", defaultValue="") String query, Model model
	         ){
	      
	      List<DcInfo> list = dcinfoDao.getUseList(page, field, query);
	      
	      model.addAttribute("list", list);
	      
	      
	      
	      return "customer.dcinfo.sub.starbucks";
	   }
	   
	   @RequestMapping("ediya")
	   public String notice3(
	         @RequestParam(value="p", defaultValue="1") Integer page,
	         @RequestParam(value="f", defaultValue="dtitle") String field,
	         @RequestParam(value="q", defaultValue="") String query, Model model
	         ){
	      
	      List<DcInfo> list = dcinfoDao.getUseList(page, field, query);
	      
	      model.addAttribute("list", list);
	      
	      
	      
	      return "customer.dcinfo.sub.ediya";
	   }
	   
	   @RequestMapping("hollys")
	   public String notice4(
	         @RequestParam(value="p", defaultValue="1") Integer page,
	         @RequestParam(value="f", defaultValue="dtitle") String field,
	         @RequestParam(value="q", defaultValue="") String query, Model model
	         ){
	      
	      List<DcInfo> list = dcinfoDao.getUseList(page, field, query);
	      
	      model.addAttribute("list", list);
	      
	      
	      
	      return "customer.dcinfo.sub.hollys";
	   }
	   
	  @RequestMapping("index/*")
	   public String noticeDetail( Model model, DcCom dccom,Principal principal) {

	      
		  
	      return "customer.dcinfo.notice.index.ediya";
	   }
	   
	   
	   
	 @RequestMapping(value = "notice/{num}", method = RequestMethod.GET)
	   public String noticeDetail(@PathVariable("num") int num, Model model, DcCom dccom,Principal principal) {

	      
		  int row = dcinfoDao.updateHit(num);
	      model.addAttribute("n", dcinfoDao.get(num));
	      model.addAttribute("prev", dcinfoDao.getPrev(num));
	      model.addAttribute("next", dcinfoDao.getNext(num));
	      

	      List<DcCom> comlist = dccomDao.getComList(num);
	      model.addAttribute("comlist", comlist);

	      model.addAttribute("comnum", dccomDao.get(dccom));
	      
	      List<CmtView1> clist = cmtDao1.getCList(num);
	      model.addAttribute("clist", clist);

	      return "customer.dcinfo.notice.detail";
	   }
	   
	   @RequestMapping(value = "notice/{num}", method = RequestMethod.POST)
	   public String noticeDetail(@PathVariable("num") int num, DcCom dccom, Model model, HttpServletRequest request,Principal principal) {
	      // dccom.setWriterid(principal.getName());

	      
	      String id = principal.getName();
	      
	      System.out.print(num);
	      
	      dccom.setWriterid(id);

	      List<DcCom> comlist = dccomDao.getComList(num);

	      int row = dccomDao.insert(dccom);

	      // int row3 = dccomDao.update(dccom);

	      return "redirect:../notice/{num}";
	   }
	   

	   @RequestMapping(value = "notice/comedit", method = RequestMethod.GET)
	   public String noticeComedit(@RequestParam("num") int num, @RequestParam("nnum") int comnum, Model model,Principal principal,
	         DcCom dccom, HttpServletRequest request) {

	      
	      String id = principal.getName();
	      model.addAttribute("n", dcinfoDao.get(num));
	      model.addAttribute("prev", dcinfoDao.getPrev(num));
	      model.addAttribute("next", dcinfoDao.getNext(num));


	      model.addAttribute("comnum", dccomDao.get(dccom));

	      return "customer.dcinfo.notice.comedit";
	   }

	   @RequestMapping(value = "notice/comedit", method = RequestMethod.POST)
	   public String noticeComedit(@RequestParam("num") int num, @RequestParam("nnum") int nnum, DcCom dccom, Model model,
	         HttpServletRequest request) {

	      int row = dccomDao.update(dccom);

	      return "redirect:../notice/" + nnum;

	   }
	   
	   @RequestMapping("notice/comdelete")
	   public String noticeComDel(@RequestParam("num") int num, @RequestParam("nnum") int nnum) {

	      dccomDao.delete(nnum);

	      return "redirect:../notice/" +nnum;
	   }

}
