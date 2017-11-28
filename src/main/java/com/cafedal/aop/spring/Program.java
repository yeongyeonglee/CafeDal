package com.cafedal.aop.spring;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Program {

   public static void main(String[] args) {
      //Calculator origin = new NewlecCalculator();
      
      //Proxy�� �����ؼ� ���� �־��� ������ ����
	   
	  ApplicationContext context = new ClassPathXmlApplicationContext("com/cafedal/aop/spring/aop-context.xml");
      Calculator cal = (Calculator) context.getBean("cal");
      
      int data = cal.add(3, 4);
      data = cal.div(3, 1);
      
      System.out.println(data);
      
   }

}