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
         Collections.synchronizedSet(new HashSet<Session>()); //잠금장치:hashset을 쓰려면 하나가 들어가면 나올때까지 못씀
   
   
   
   @OnOpen
   public void onOpen(Session session, EndpointConfig config) {
      sessionAll.add(session);
      //this.session = session; //메세지가 왓을때 세션에게 에코하려고..      
      //config.getBasicRemote()
      System.out.println("누가? 누가 접속한거여?");
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
		   s.getBasicRemote().sendText("누군가가 접속을 끊었습니다.");
	   
   }
   
}