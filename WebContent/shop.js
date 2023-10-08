var slideIndex = 1; // 表示当前轮播图的索引
showSlides(slideIndex);

function plusSlides(n) { // 表示要移动的轮播图数量，通过调用showSlides函数来更新当前轮播图的索引
    showSlides(slideIndex + n);
}

function currentSlide(n) { // 表示要显示的轮播图索引，通过调用showSlides函数来更新当前轮播图的索引
    showSlides(n);
}

function showSlides(n) { // 表示当前轮播图的索引
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

// 添加菜单点击事件
var menuItems = document.getElementsByClassName("sidebar")[0].getElementsByTagName("li");
for (var i = 0; i < menuItems.length; i++) {
    menuItems[i].addEventListener("click", toggleCategory);
}

function toggleCategory() { // 点击展开或隐藏子类菜单的函数
    var category = this.nextElementSibling;
    if (category.style.display === "block") {
        category.style.display = "none";
        this.firstElementChild.innerText = "+";
    } else {
        category.style.display = "block";
        this.firstElementChild.innerText = "-";
    }
}

// 添加鼠标移出子类菜单时保持显示的逻辑
var subCategories = document.getElementsByClassName("category");
for (var i = 0; i < subCategories.length; i++) {
    subCategories[i].addEventListener("mouseleave", function () {
        this.style.display = "none";
        this.previousElementSibling.firstElementChild.innerText = "+";
    });
}
