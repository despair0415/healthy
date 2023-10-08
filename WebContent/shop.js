var slideIndex = 1; // ��ʾ��ǰ�ֲ�ͼ������
showSlides(slideIndex);

function plusSlides(n) { // ��ʾҪ�ƶ����ֲ�ͼ������ͨ������showSlides���������µ�ǰ�ֲ�ͼ������
    showSlides(slideIndex + n);
}

function currentSlide(n) { // ��ʾҪ��ʾ���ֲ�ͼ������ͨ������showSlides���������µ�ǰ�ֲ�ͼ������
    showSlides(n);
}

function showSlides(n) { // ��ʾ��ǰ�ֲ�ͼ������
    var i;
    var slides = document.getElementsByClassName("slideshow-image");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {
        slideIndex = 1;
    }
    if (n < 1) {
        slideIndex = slides.length;
    }
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
}

// ��Ӳ˵�����¼�
var menuItems = document.getElementsByClassName("sidebar")[0].getElementsByTagName("li");
for (var i = 0; i < menuItems.length; i++) {
    menuItems[i].addEventListener("click", toggleCategory);
}

function toggleCategory() { // ���չ������������˵��ĺ���
    var category = this.nextElementSibling;
    if (category.style.display === "block") {
        category.style.display = "none";
        this.firstElementChild.innerText = "+";
    } else {
        category.style.display = "block";
        this.firstElementChild.innerText = "-";
    }
}

// �������Ƴ�����˵�ʱ������ʾ���߼�
var subCategories = document.getElementsByClassName("category");
for (var i = 0; i < subCategories.length; i++) {
    subCategories[i].addEventListener("mouseleave", function () {
        this.style.display = "none";
        this.previousElementSibling.firstElementChild.innerText = "+";
    });
}
