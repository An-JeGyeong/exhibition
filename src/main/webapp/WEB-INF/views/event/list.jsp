<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화 생활(관리: 목록)</title>
<script></script>
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
					<form>
						<div>
							<select name="search">
								<option value="0">전체</option>
								<option value="1">전시</option>
								<option value="2">팝업</option>
							</select>
						</div>
						<div>
							<input type="text" name="keyword">
						</div>
						<div>
							<button>검색</button>
						</div>
					</form>
					
					<div>
						<div><a href="add">추가</a></div>
					</div>
				</div>
				
				<div>
					<table border="1">
						<thead>
							<tr>
								<td>카테고리</td>
								<td>ID</td>
								<td>제목</td>
								<td>장소</td>
								<td>시작일</td>
								<td>마감일</td>
								<td>설정</td>
							</tr>
						</thead>
						
						<tbody>
							<c:if test="${list.size() < 1}">
								<tr>
									<td colspan="7">검색 된 제품이 없습니다</td>
								</tr>
							</c:if>
							
							<c:forEach var="item" items="${list}">
								<tr>
									<td>${item.category}</td>
									<td>${item.id}</td>
									<td>${item.title}</td>
									<td>${item.place}</td>
									<td><fmt:formatDate value="${item.openDate}" pattern="yyyy년 MM월 dd일"/></td>
									<td><fmt:formatDate value="${item.closeDate}" pattern="yyyy년 MM월 dd일"/></td>					
									<td><a href="update/${item.id}">수정</a> <a href="delete/${item.id}">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
						
						<tfoot>
							<tr>
								<td colspan="9">
									<div>
										<div class="page-item"><a href="?page=1${pager.query}" class="page-link">처음</a></div>
										<div class="page-item"><a href="?page=${pager.prev}${pager.query}" class="page-link">이전</a></div>
										
										<c:forEach var="page" items="${pager.list}">
											<div class="page-item"><a href="?page=${page}${pager.query}" class="page-link ${pager.page == page ? 'active' : ''}">${page}</a></div>
										</c:forEach>								
										
										<div class="page-item"><a href="?page=${pager.next}${pager.query}" class="page-link">다음</a></div>
										<div class="page-item"><a href="?page=${pager.last}${pager.query}" class="page-link">마지막</a></div>
									</div>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</main>
		</div>
	</div>
</body>
</html>