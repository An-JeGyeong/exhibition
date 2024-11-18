function signup() {
    const form = document.getElementById("signup");

    const idPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{5,15}$/;
    const pwPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{8,20}$/;
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if(!form.id.value) {
        // 아이디 입력 유무
        document.getElementById("id_error").classList.remove("hide_error");
        return;
    }
    
    if(!idPattern.test(form.id.value)) {
        // 아이디 패턴 확인
        document.getElementById("id_error").classList.remove("hide_error");
        return;
    }

    if(!id_check) {
        // 아이디 중복체크 유무
        document.getElementById("id_error").classList.remove("hide_error");
        return;
    }

    if(!pwPattern.test(form.passwd.value)) {
        // 비번 패턴 확인
        document.getElementById("pw_error").classList.remove("hide_error");
        return;
    }

    if(!form.passwd.value || !form.passwd_check.value) {
        // 비번 또는 비번확인 입력 유무
        document.getElementById("pw_error").classList.remove("hide_error");
        return;
    }
    
    if(form.passwd.value != form.passwd_check.value) {
        // 비번, 비번확인 일치 유무
        document.getElementById("pw_error").classList.remove("hide_error");
        return;
    }

    document.getElementById("pw_error").classList.add("hide_error");

    if(!form.email.value) {
        // 이메일 입력 유무 확인
        document.getElementById("email_error").classList.remove("hide_error");
        return;
    }

    if(!emailPattern.test(form.email.value)) {
        // 이메일 패턴 확인
        document.getElementById("email_error").classList.remove("hide_error");
        return;
    }
    
    document.getElementById("email_error").classList.add("hide_error");

    if(!form.name.value) {
        return;
    }

    if(!form.year.value || !form.month.value || !form.day.value) {
        // 년, 월, 일 입력 유무
        return;
    }

    if(form.year.value.length < 4 || form.year.value.length > 4) {
        // 년도 길이 4미만, 4초과
        return;
    }

    if(form.day.value.length > 2) {
        // 일 길이 2 초과
        return;
    }

    const year = form.year.value;
    const month = form.month.value.padStart(2, '0');  // 월을 2자리로 맞추기 위해 앞에 0 추가
    const day = form.day.value.padStart(2, '0');  // 일자를 2자리로 맞추기 위해 앞에 0 추가
    const birthDate = `${year}-${month}-${day}`;
    
    // 숨겨진 날짜 필드에 값 설정
    document.getElementById("birth").value = birthDate;
    
    if(!form.phone.value) {
        return;
    }

    form.submit();
}