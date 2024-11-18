<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화 생활(관리: 수정)</title>

<script type="text/javascript" src="/resources/js/jquery-3.7.1.min.js"></script>
<script src="/resources/js/event/update.js"></script>
<script src="/resources/js/event/add.js"></script>

</head>
<body>
	<div>
		<div>
			<header>
				<div>
					<jsp:include page="../nav.jsp"></jsp:include>
				</div>
			</header>
			<main>
				<div>
					<form method="post" enctype="multipart/form-data">
						<div>
							<div>
								<div>
									<div>
										<label>전시회 id: ${item.id}</label>
									</div>
									
									<div>
										<select name="category">
									        <option value="">선택</option>
									        <c:choose>
									            <c:when test="${item.category == 1}">
									                <option value="1" selected="selected">전시</option>
									                <option value="2">팝업</option>
									            </c:when>
									            <c:when test="${item.category == 2}">
									            	<option value="1">전시</option>
									                <option value="2" selected="selected">팝업</option>
									            </c:when>
									        </c:choose>
									    </select>
									</div>
									
									<div>
										<label>제목</label>
										<input type="text" name="title" value="${item.title}">
									</div>
									<div>
										<label>장소</label>
										<input type="text" name="place" value="${item.place}">
									</div>
									<div>
										<label>시작일</label>
										<input type="date" name="openDate" value='<fmt:formatDate value="${item.openDate}" pattern="yyyy-MM-dd"/>'>
									</div>
									<div>
										<label>마감일</label>
										<input type="date" name="closeDate" value='<fmt:formatDate value="${item.closeDate}" pattern="yyyy-MM-dd"/>'>
									</div>

									<div>
										<label>가격</label>
										<div>
											<label>성인</label>
											<input type="number" name="adult" value="${item.price.adult}">
										</div>
										<div>
											<label>청소년</label>
											<input type="number" name="teenager" value="${item.price.teenager}">
										</div>
										<div>
											<label>어린이</label>
											<input type="number" name="children" value="${item.price.children}">
										</div>
										<div>
											<label>장애인</label>
											<input type="number" name="disabled" value="${item.price.disabled}">
										</div>
										<div>
											<label>국가유공자</label>
											<input type="number" name="patriot" value="${item.price.patriot}">
										</div>
									</div>
									
									<div>
										<div>
											<label>이미지</label>
										</div>
										<div class="col-1 d-grid">
											<button type="button" id="add_photo" class="btn btn-sm btn-primary">추가</button>
										</div>
										
										<ul id="list_photo">
										</ul>
									</div>
									
									<div id="photo_list">
										<c:forEach var="photo" items="${item.photo}">						
											<div class="photo">
												<div>
													<img alt="이미지" width="150" height="150" src="${pageContext.request.contextPath}/upload/${photo.uuid}_${photo.filename}">
												</div>
												<div>
													<button type="button" class="delete_photo" data-photo="${photo.id}">삭제</button>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
							
							<div>
								<div>
									<button>수정하기</button>
								</div>
								<div>
									<a href="../list"><button type="button">취소</button></a>
								</div>
							</div>
						</div>
					</form>
				</div>
				
				<div id="temp_photo" style="display: none">
					<div>
						<div>
							<input type="file" name="uploadFile" accept="image/*">
						</div>
						<div>
							<button type="button">삭제</button>
						</div>
					</div>
				</div>
			</main>
			<footer>
			
			</footer>
		</div>
	</div>
</body>
</html>