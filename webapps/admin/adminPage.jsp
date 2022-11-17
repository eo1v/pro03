<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>관리자페이지</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
 </head>
	<body>
	  <jsp:include page="/header.jsp" />
			<aside class="menu">
			  <p class="menu-label">
				회원관리
			  </p>
			  <ul class="menu-list">
			    <li><a>회원 목록</a></li>
			  </ul>
			  <p class="menu-label">
				글관리
			  </p>
			  <ul class="menu-list">
			    <li><a>글 수정</a></li>
			  </ul>
			   <p class="menu-label">
				메인페이지
			  </p>
			  <ul class="menu-list">
			    <li><a href="<%=request.getContextPath() %>/tour/addTour">목록 수정</a></li>
			  </ul>
			</aside>
	</body>
</html>