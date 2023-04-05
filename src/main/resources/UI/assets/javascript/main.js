$(document).ready(function () {
    $('.container-slider').slick({
        slidesToShow: 8,
        slidesToScroll: 1,
        infinite: true,
        arrows: true,
        draggable: true,
        prevArrow: `<button type='button' class='slick-prev slick-arrow'><i class="fa-solid fa-chevron-left"></i></button>`,
        nextArrow: `<button type='button' class='slick-next slick-arrow'><i class="fa-solid fa-chevron-right"></i></button>`,
        dots: false,
        responsive: [
            {
                breakpoint: 500,
                settings: {
                    slidesToShow: 2,
                },
            },
            {
                breakpoint: 670,
                settings: {
                    slidesToShow: 3,
                },
            },
            {
                breakpoint: 970,
                settings: {
                    slidesToShow: 5,
                },
            },
            {
                breakpoint: 1100,
                settings: {
                    slidesToShow: 6,
                },
            },
        ],
        // autoplay: true,
        // autoplaySpeed: 1000,
    });
});
$(document).ready(function () {
    $('.viewlist-slider').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        arrows: false,
        draggable: true,
        prevArrow: `<button type='button' class='slick-prev slick-arrow'><i class="fa-solid fa-chevron-left"></i></button>`,
        nextArrow: `<button type='button' class='slick-next slick-arrow'><i class="fa-solid fa-chevron-right"></i></button>`,
        dots: true,
        autoplay: true,
        autoplaySpeed: 3000,
        responsive: [
            {
                breakpoint: 1,
                settings: {
                    slidesToShow: 1,
                },
            },
        ],
    });
});
