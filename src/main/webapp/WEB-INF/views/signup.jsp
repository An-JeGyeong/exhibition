<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문화 생활(회원가입)</title>
<script>
	let id_check = false;
</script>
<script src="resources/js/show_passwd.js"></script>
<script src="resources/js/signup.js"></script>
<script src="resources/js/signup_check.js"></script>
<script src="resources/js/onlyAlphaNum.js"></script>

<style type="text/css">
.hide_error{
	display: none;
}
</style>

</head>
<body>
	<header>
		<div>
			<jsp:include page="nav.jsp"></jsp:include>
		</div>
	</header>
	<main>
		<div>
			<form id="signup" method="post" action="signup">
				<div>
					<div>
						<div>
							<div>
								<input type="text" name="id" placeholder="아이디">
								<button type="button" id="id_check"><span>중복 확인</span></button>
							</div>
							<div id="id_check_error" class="hide_error">"아이디 중복검사를 하셔야합니다."</div>
							
							<div class="passwd">
								<input type="password" name="passwd" placeholder="비밀번호">
								<button type="button" class="showPasswd"><span class="blind">비밀번호 보기</span></button>
							</div>
							
							<div class="passwd">
								<input type="password" name="passwd_check" placeholder="비밀번호 확인">
								<button type="button" class="showPasswd"><span class="blind">비밀번호 보기</span></button>
							</div>
							
							<div>
								<input type="email" name="email" placeholder="이메일">
							</div>
						</div>
						
						<div id="id_error" class="hide_error">"아이디: 5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다."</div>
						<div id="pw_error" class="hide_error">"비밀번호: 8~16자의 영문 대/소문자, 숫자, 특수문자를 사용해 주세요."</div>
						<div id="email_error" class="hide_error">"이메일: 이메일 주소가 정확한지 확인해 주세요."</div>
						
						<div>
							<div>
								<input type="text" name="name" placeholder="이름">
							</div>
							<div>
								<input type="number" name="year" placeholder="년(4자)">
								<select name="month">
									<option value="">월</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
								<input type="number" name="day" placeholder="일">
							</div>
							
							<input type="hidden" name="birth" id="birth">

							<div>
								<input type="text" name="phone" placeholder="휴대폰 전화번호">
							</div>
							
							<div>
								<input type="text" name="address" placeholder="주소(선택)">
							</div>
						</div>
						
						<div>
							<button type="button" id="signup_button">회원가입</button>
						</div>

					</div>
				</div>
			</form>
		</div>
	</main>
</body>
</html>