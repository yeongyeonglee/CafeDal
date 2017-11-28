package com.cafedal.aop;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Program {

   public static void main(String[] args) {
      Calculator origin = new NewlecCalculator();
      
      //Proxy�� �����ؼ� ���� �־��� ������ ����
      Calculator cal = (Calculator) Proxy.newProxyInstance(
    		  NewlecCalculator.class.getClassLoader(), 
    		  new Class[] {Calculator.class},
    		  new InvocationHandler() {
         
		         @Override
		         public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		            System.out.println("����ó�� ��������");
		            Object result = method.invoke(origin, args);
		            return result;
         }
      });
      
      int data = cal.add(3, 4);
      
      System.out.println(data);
      

   }

}