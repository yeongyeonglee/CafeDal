<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<link type="text/css" rel="stylesheet" href="${path}/resource/css/fullcalendar.css">

<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.9.1/fullcalendar.min.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.5.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.9.1/fullcalendar.min.js"></script>

<script type='text/javascript'>
 
	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
	 	/* var name_by_id = $('#test_id').attr('dtitle');
		alert(name_by_id); */
		
		var value = $('#test_id').val();
		var value2 = $('#test_id2').val();
		var value3 = $('#test_id3').val();
		var value4 = $('#test_id4').val();
		
 		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			editable: true,
			events: [
				{
					title: value,
					start: new Date(value2),
					end: new Date(value3)
				}
		]
		});
		
	}); 

</script>



<main class="main">
	<form name="calendarFrm" id="calendarFrm" action="" method="GET">
		<div class="calendar" id="calendar">
            <div>
            	<c:forEach var="n" items="${list}">
            		<input type="hidden" id="test_id" value="${n.dtitle}">
            		<input type="hidden" id="test_id2" value="${n.startdate}">
            		<input type="hidden" id="test_id3" value="${n.finishdate}">
            	</c:forEach>
            </div>
            
		</div>
	</form>
</main>



