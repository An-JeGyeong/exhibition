<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div>
	<h3><a href="/">문화 생활</a></h3>
</div>
<div>
	<ul>
		<li>전시회</li>
		<li>팝업</li>
		<li><a href="/event/list">전시회/팝업 관리</a></li>
	</ul>
</div>
<c:if test="${sessionScope.member == null}">
	<div>
		<div><a href="${pageContext.request.contextPath}/login">로그인</a></div>
		<div><a href="${pageContext.request.contextPath}/signup">회원가입</a></div>
	</div>
</c:if>
<c:if test="${sessionScope.member != null}">
<div>
	<div><a href="${pageContext.request.contextPath}/logout">로그아웃</a></div>
	<div><a href="${pageContext.request.contextPath}/mypage">마이페이지</a></div>
</div>
</c:if>