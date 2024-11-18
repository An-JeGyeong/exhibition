window.addEventListener("load", () => {
    const submit = document.getElementById("signup_button");
    const form = document.getElementById("signup");
    const idPattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z0-9]{5,15}$/;
    
    submit.addEventListener("click", e => {
        signup();
    });    

    document.getElementById("id_check").addEventListener("click", e => {
        const id = document.querySelector("input[name='id']").value;
        const xhr = new XMLHttpRequest();
        xhr.open("GET", `id_check/${id}`, true);

        if(idPattern.test(form.id.value)){
            document.getElementById("id_error").classList.add("hide_error");
            xhr.onreadystatechange = () => {
                if(xhr.readyState === xhr.DONE) {
                    if(xhr.status == 200) {
                        if(xhr.responseText === "OK") {
                            alert("사용가능한 아이디 입니다");
                            id_check = true;
                        } else
                            alert("이미 다른 사용자가 사용하는 아이디 입니다");
                    }
                }
            };
    
            xhr.send();
        }else{
            document.getElementById("id_error").classList.remove("hide_error");
        }
    });

    document.querySelector("input[name='id']").addEventListener("change", e => {
        console.log(e.target.value);
        id_check = false;
    });
});