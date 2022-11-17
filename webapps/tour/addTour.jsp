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
    <title>관광등록</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
  </head>
  <body>
  <jsp:include page="/header.jsp" />
	  <form action="${path1 }/AddTourCtrl.do" method="post">
	  	<div class="field">
	  		<label class="label">분류</label>
	  		<div class="select">
	  			<select name="cate" id="cate">
	  				<option value="A" >수원화성</option>
	  				<option value="B" selected>관광</option>
	  				<option value="C" >추천코스</option>
	  				<option value="D" >체험</option>
	  				<option value="E" >쇼핑ㆍ숙박</option>
	  				<option value="F" >안내</option>
	  			</select>
	  		</div>
	  	</div>
	  </form>
		  <div class="field">
		  <label class="label">장소 이름</label>
		  <div class="">
		    <input class="input" type="text" name="place" id="place" placeholder="장소 이름을 입력하세요">
		  </div>
		</div>
		<div class="field">
		  <label class="label">장소 설명</label>
		  <div class="">
		    <input class="input" name="content1" id="content1" type="text" placeholder="장소 주요 설명을 입력하세요" >
		</div>
		</div>
		<div class="field">
		  <label class="label">상세설명</label>
		  <div class="">
		    <textarea class="textarea" name="content2" id="content2" placeholder="장소 상세 설명을 입력하세요" >
		  </textarea>
		  </div>
		</div>
		<div class="field">
		  <label class="label">이미지 1</label>
		  <div class="control">
		    <input type="text" class="text" name="pic1" id="pic1" required>
		    <input type="hidden" name="pic1" id="pic1" value="yes" required>
		  </div>
		</div>
		<div class="field">
		  <label class="label">이미지 2</label>
		  <div class="control">
		    <input type="text" class="text" name="pic2" id="pic2" required>
		    <input type="hidden" name="pic2" id="pic2" value="no" required>
		  </div>
		</div>
		<button type="button" class="button is-link" onclick="imgUpload"></button>
		
		<div class="field is-grouped">
		  <div class="control">
		    <button class="button is-link">Submit</button>
		  </div>
		  <div class="control">
		    <button class="button is-link is-light">Cancel</button>
		  </div>
		</div>
		
		<script>
		function imgUpload(no){
			var tourno = document.frm1.tourno.value;
			if(tourno==""){
				alter("카테고리를 선택하지 않으셨거나 고유번호를 가져오지 못했습니다.");
				return;
			}
			var win1 = window.open{"imgUpload.jsp?no="+no,"win","width=600, height=400"}
		}
		function changeTourNo(f){
			document.frm1.tourno.value =f.value;
		}
		$.ajax{}
			url :"${Path 1}/NoLoadCtrl.do",
			type :"post",
			datatype :"json",
			success :fuction(data){
				console.log(data.no);
				$("#tourno")val(document.frm1.cate.value+data.no);
			}
		</script>
		
  <jsp:include page="/footer.jsp"></jsp:include>
  </body>
</html>