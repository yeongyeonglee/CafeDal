package com.cafedal.webapp.controller.admin.chat;


import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.websocket.EndpointConfig;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value="/resource/chat-server")
public class ChatServer {
   //POJO : Plain Old Java Object
   
   // Map / List / Set
   //private List<Session> sessionAll;
   private static Set<Session> sessionAll = 
         Collections.synchronizedSet(new HashSet<Session>()); //�����ġ:hashset�� ������ �ϳ��� ���� ���ö����� ����
   
   
   
   @OnOpen
   public void onOpen(Session session, EndpointConfig config) {
      sessionAll.add(session);
      //this.session = session; //�޼����� ������ ���ǿ��� �����Ϸ���..      
      //config.getBasicRemote()
      System.out.println("����? ���� �����Ѱſ�?");
   }
   
   @OnMessage
   public void onTextMessage(Session session, String data) throws IOException {
      System.out.println(data);
      for(Session s : sessionAll)
         s.getBasicRemote().sendText(data);
      
      System.out.println(sessionAll.size() + ":" + data);
   }
   
   @OnClose
   public void onclose(Session session) throws IOException {
	   sessionAll.remove(session);
	   for(Session s : sessionAll)
		   s.getBasicRemote().sendText("�������� ������ �������ϴ�.");
	   
   }
   
}