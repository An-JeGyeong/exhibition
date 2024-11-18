window.addEventListener("load", () => {
    const remove = e => {
        e.target.closest("li").remove();
    };

    document.getElementById("add_photo").addEventListener("click", e => {
        const photoElements = document.querySelectorAll('#photo_list .photo');

        // 생성된 개수 확인
        const photoCount = photoElements.length;

        if (photoCount == 2) {
            if(getTempPhotoCount() >= 2){
                return;
            }
        }

        if (photoCount == 1) {
            if(getTempPhotoCount() == 0){
                createPhoto(1);
                return;
            }else{
                return;
            }

        }

        if (photoCount == 0) {
            if(getTempPhotoCount() == 0){
                createPhoto(2);
                return;
            }else if(getTempPhotoCount() == 1){
                createPhoto(1);
                return;
            }else{
                return;
            }
        }
    });

    // 사진 생성 함수
    function createPhoto(count) {
        const list_photo = document.getElementById("list_photo");
        const temp_photo = document.getElementById("temp_photo");

        for (let i = 0; i < count; i++) {
            const li = document.createElement("li");
            li.classList.add("photo-item", "temp-photo");
            li.innerHTML = temp_photo.innerHTML;

            // 삭제 버튼 이벤트 추가
            li.querySelector("button").addEventListener("click", remove);

            list_photo.append(li);
        }
    }

    function getTempPhotoCount() {
        const tempPhotoElements = document.querySelectorAll('#list_photo .temp-photo');
        return tempPhotoElements.length;
    }
});
