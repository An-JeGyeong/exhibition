<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
										<label>포스터 이미지</label>
										<input type="file" name="uploadFile" accept="image/*">
									</div>
									
									<div>
										<label>썸네일 이미지</label>
										<input type="file" name="uploadFile" accept="image/*">
									</div>
									
									<div>
										<select name="category">
											<option value="">선택</option>
											<option value="1">전시</option>
											<option value="2">팝업</option>
										</select>
									</div>
									
									<div>
										<label>제목</label>
										<input type="text" name="title">
									</div>
									<div>
										<label>장소</label>
										<input type="text" name="place">
									</div>
									<div>
										<label>시작일</label>
										<input type="date" name="openDate">
									</div>
									<div>
										<label>마감일</label>
										<input type="date" name="closeDate">
									</div>

									<div>
										<label>가격</label>
										<div>
											<label>성인</label>
											<input type="number" name="adult" value="0">
										</div>
										<div>
											<label>청소년</label>
											<input type="number" name="teenager" value="0">
										</div>
										<div>
											<label>어린이</label>
											<input type="number" name="children" value="0">
										</div>
										<div>
											<label>장애인</label>
											<input type="number" name="disabled" value="0">
										</div>
										<div>
											<label>국가유공자</label>
											<input type="number" name="patriot" value="0">
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