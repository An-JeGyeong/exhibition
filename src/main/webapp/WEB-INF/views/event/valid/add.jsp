<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화 생활(관리: 추가)</title>
</head>
<body>
	<div>
		<div>
			<header>
				<div>
					<jsp:include page="../../nav.jsp"></jsp:include>
				</div>
			</header>
			<main>
				<div>
					<form method="post" enctype="multipart/form-data">
						<div>
							<div>
								<div>
									<div>
										<label>포스터 이미지</label>
										<form:input path="event.photo" type="file" name="uploadFile" accept="image/*"></form:input>
									</div>
									
									<div>
										<label>썸네일 이미지</label>
										<form:input path="event.photo" type="file" name="uploadFile" accept="image/*"></form:input>
										<div class="error"><form:errors path="event.photo"></form:errors></div>
									</div>
									
									<div>
										<form:select path="event.category" name="category">
											<option value="">선택</option>
											<option value="1">전시</option>
											<option value="2">팝업</option>
										</form:select>
										<div class="error"><form:errors path="event.category"></form:errors></div>
									</div>
									
									<div>
										<label>제목</label>
										<form:input path="event.title" type="text" name="title"></form:input>
										<div class="error"><form:errors path="event.title"></form:errors></div>
									</div>
									<div>
										<label>장소</label>
										<form:input path="event.place" type="text" name="place"></form:input>
										<div class="error"><form:errors path="event.place"></form:errors></div>
									</div>
									<div>
										<label>시작일</label>
										<form:input path="event.openDate" type="date" name="openDate"></form:input>
										<div class="error"><form:errors path="event.openDate"></form:errors></div>
									</div>
									<div>
										<label>마감일</label>
										<form:input path="event.closeDate" type="date" name="closeDate"></form:input>
										<div class="error"><form:errors path="event.closeDate"></form:errors></div>
									</div>

									<div>
										<label>가격</label>
										<div>
											<label>성인</label>
											<form:input path="price.adult" type="number" name="adult" value="0"></form:input>
											<div class="error"><form:errors path="price.adult"></form:errors></div>
										</div>
										<div>
											<label>청소년</label>
											<form:input path="price.teenager" type="number" name="teenager" value="0"></form:input>
											<div class="error"><form:errors path="price.teenager"></form:errors></div>
										</div>
										<div>
											<label>어린이</label>
											<form:input path="price.children" type="number" name="children" value="0"></form:input>
											<div class="error"><form:errors path="price.children"></form:errors></div>
										</div>
										<div>
											<label>장애인</label>
											<form:input path="price.disabled" type="number" name="disabled" value="0"></form:input>
											<div class="error"><form:errors path="price.disabled"></form:errors></div>
										</div>
										<div>
											<label>국가유공자</label>
											<form:input path="price.patriot" type="number" name="patriot" value="0"></form:input>
											<div class="error"><form:errors path="price.patriot"></form:errors></div>
										</div>
									</div>
								</div>
							</div>
							<div>
								<button>생성하기</button>
							</div>
						</div>
					</form>
				</div>
			</main>
			<footer>
			
			</footer>
		</div>
	</div>
</body>
</html>