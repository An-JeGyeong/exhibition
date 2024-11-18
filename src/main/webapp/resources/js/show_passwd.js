window.addEventListener("load", () => {
    document.querySelectorAll(".passwd").forEach(div => {
        const input = div.querySelector("input[type='password']");
        const view = div.querySelector(".showPasswd");
        let showpw = 0;

        view.addEventListener("click", e => {
            if (showpw == 0) {
                input.setAttribute("type", "text");
                showpw = 1;   
            }else{
                input.setAttribute("type", "password");
                showpw = 0;
            }
        });

    });
});