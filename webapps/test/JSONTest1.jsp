<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON Test1</title>
<jsp:include page="/head.jsp"/>
</head>
<body>
	<h2 class="title">JSON(Javascript Object Notation)</h2>
	<p>자바스크립트의 객체 형태로 데이터를 교환하는 방식</p>
	<div id="js">
	
	</div>
	<script>
	$(document).ready(function(){
		var obj = {name:"한시연", age:26};
		$("#js").html("<p>이름  : "+obj.name+"</p>");
		$("#js").html("나이 : "+obj.age+"</p>");
	})
	</script>
	<div id="con">
	</div>
	<script>
	$(document).ready(function(){
		var params = { name : "한시연" }
		$.ajax({
			url:"${path1 }/JSONTest2.do", // 아이디가 전송되어질 곳
			type:"post",
			dataType:"json",
			data:params,
			success:function(data){
				console.log(data);
				var user = data;
				$("#con2").html("이름:"+user.name+", 점수 :"+user.point);
			}
		})
	});
	</script>	

</body>
</html>