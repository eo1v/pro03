<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path2" value="${pageContext.request.contextPath }" />  
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a class="navbar-item" id="logo" href="<%=request.getContextPath() %>/Main">
		
    </a>
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start" id="gnb">
      <a class="navbar-item" href="<%=request.getContextPath() %>/GetNoticeListCtrl.do">
        Documentation
      </a>
       <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          	수원화성
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
           	 수원화성
          </a>
          <a class="navbar-item">
       		 화성행궁
          </a>
        </div>
       </div>
       <div class="navbar-item has-dropdown is-hoverable">
        <a href="${path2 }/GetTourCateListCtrl.do?cate=A" class="navbar-link">
        	관광  	
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
      		문화와 축제
          </a>
          <a class="navbar-item">
			아름다운 자연
          </a>
          <a class="navbar-item">
 			수원의 문화재
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
         	음식 
          </a>
        </div>
       </div>
       <div class="navbar-item has-dropdown is-hoverable">
        	<a href="${path2 }/GetTourCateListCtrl.do?cate=B" class="navbar-link">
        	추천코스  	
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
       		일정별 코스
          </a>
          <a class="navbar-item">
 			계절 꽃 관광 코스
          </a>
          <a class="navbar-item">
			자전거여행 코스
          </a>
          <a class="navbar-item">
			도보여행코스
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
       		전통시장 코스
          </a>
        </div>
        </div>
         <div class="navbar-item has-dropdown is-hoverable">
	 	  <a href="${path2 }/GetTourCateListCtrl.do?cate=C" class="navbar-link">
        	체험  	
          </a>
          <div class="navbar-dropdown">
          <a class="navbar-item">
 			오감만족 체험관광
          </a>
          <a class="navbar-item">
  			해우재
          </a>
          <a class="navbar-item">
          	수원 구 부국원
          </a>
        </div>
        </div>
         <div class="navbar-item has-dropdown is-hoverable">
        	<a href="${path2 }/GetTourCateListCtrl.do?cate=D" class="navbar-link">
        	쇼핑ㆍ숙박 	
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
          	기념품
          </a>
          <a class="navbar-item">
     		숙박
          </a>
        </div>
        </div>
        <div class="navbar-item has-dropdown is-hoverable">
        	<a href="${path2 }/GetTourCateListCtrl.do?cate=E" class="navbar-link">
        	안내  	
        </a>
        <div class="navbar-dropdown">
          <a class="navbar-item">
       		관광 안내소
          </a>
          <a class="navbar-item">
   			관광 안내 지도 및 신청
          </a>
          <a class="navbar-item">
    		문화 관광 해설사 신청
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
			수원 교통 정보 시스템
          </a>
        </div>
        </div>
      </div>
      </div>

  <div class="navbar-end">
	  <div class="navbar-item">
	  	<c:if test="${empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/user/agree.jsp" class="button is-primary">
	     <strong>Sign up</strong>
	   </a>
	   <a href="${path2 }/user/login.jsp" class="button is-light">
	     Log in
	   </a>
	 </div>
	</c:if>
	<c:if test="${not empty sid }">
	 <div class="buttons">
	   <a href="${path2 }/UserInfoCtrl.do" class="button is-primary">
	     <strong>Member Info</strong>
	   </a>
	   <a href="${path2 }/UserLogoutCtrl.do" class="button is-light">
	     LogOut
	   </a>
		<c:if test='${sid.equals("admin")}'>
		   <a href="${path2 }/AdminCtrl.do" class="button is-danger">
		     <strong>Admin</strong>
		   </a>
		 </c:if>
	 </div>
	</c:if>
  </div>
</div>
</nav>