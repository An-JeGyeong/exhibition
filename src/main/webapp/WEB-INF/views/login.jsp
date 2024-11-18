<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화 생활(로그인)</title>
<script src="resources/js/show_passwd.js"></script>
</head>
<body>
	<header>
		<div>
			<jsp:include page="nav.jsp"></jsp:include>
		</div>
	</header>
	<main>
		<div>
			<form method="post">
				<div>
					<div>
						<div>
							<label>
								<input type="text" name="id" placeholder="아이디">
							</label>
						</div>
						
						<div class="passwd">
							<label>
								<input type="password" name="passwd" placeholder="비밀번호">
								<button type="button" class="showPasswd"><span class="blind">비밀번호 노출상태 변경버튼</span></button>	
							</label>
						</div>
					</div>
					
					<div>
						<button><span>로그인</span></button>
					</div>
				</div>
			</form>
		</div>
	</main>
</body>
</html>