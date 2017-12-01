package com.cafedal.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main/*")
public class AboutusController {


   @RequestMapping(value="aboutus")
   public String aboutus(){
      
      return "main.aboutus";
   }
  
}
