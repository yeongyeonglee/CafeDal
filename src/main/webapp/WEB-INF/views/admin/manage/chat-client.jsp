<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="id" value="d" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div style="border:1px solid #e9e9e9; 
            background:orange; 
            width:300px;
            height:500px;
            padding:10px;">
      <div style="border:1px solid #a9a9a9; 
               height:450px;
               background:white;">
         <input id="conn-butoon" type="button" value="연결" />
         <ul id="chat-list" >
         
         </ul>
      </div>
      
      <div style="border:1px solid #e9e9e9; 
               height:30px;
               background:white;">
          <textarea id="chat-text" 
                style="width:100%; height:100%">
          </textarea>
         <input id="send-button" type="button" value="send"/>
      </div>
   </div>
</body>
<script type="text/javascript">
   window.addEventListener("load",function(event){
	  var id='${id}';
	  alert(id);
      var chatList =document.querySelector("#chat-list");
      var chatText = document.querySelector("#chat-text");
      var sendButton = document.querySelector("#send-button");
      var socket = null;
      var connButton = document.querySelector("#conn-butoon");
      
      sendButton.onclick = function(){
    	 var data = {id:id,text:chatText.value}
    	 socket.send(JSON.stringify(data));
         //socket.send(chatText.value);
         //alert(chatText.value);
      }
      
      connButton.addEventListener("click", function(e){
         socket= new WebSocket("ws://211.238.142.72/SpringMVC/resource/chat-server");
         //socket= new WebSocket("ws://211.238.142.74/SpringWeb/resource/chat-server");
         socket.onopen = function(evt){
            //alert("연결되었습니다.");
            var li = document.createElement("li");
            li.textContent = "접속되었습니다.";
            
            chatList.appendChild(li);
         };
         socket.onmessage = function(evt){
            var li = document.createElement("li");
            var data = JSON.parse(evt.data); //json형태로 데이터가 온다.
            li.textContent = data.id + ":" + data.text;
                        
            chatList.appendChild(li);
         };
         //자기에 대한 접속이 끊겼을 때
         socket.onclose = function(evt){
        	 var li = document.createElement("li");
             li.textContent = "서버와의 연결이 종료되었습니다.";
                         
             chatList.appendChild(li);       
             
         };
         
      });
      
   });
   
</script>
</html>