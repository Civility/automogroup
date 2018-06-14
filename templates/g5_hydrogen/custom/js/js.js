jQuery(document).ready(function($) {
    //гармонь
$('.toggle').click(function() {
      if($(this).next('.content').is(':visible')){
        $(this).next('.content').slideUp('ease');
        $(this).children().toggleClass('icon-plus-2 icon-minus-2');
      } else {
        $(this).next('.content').slideDown('ease');
        $(this).children().toggleClass('icon-plus-2 icon-minus-2');
      }
});
/*FINISH preloader*/
    $('#slider').slick({
        autoplay: true, // Автоматическая прокрутка
        autoplaySpeed: 3500, //Скорость автопрокрутки в милисекундах
        arrows: false, //Показ/скрытие навигационных кнопок 
        cssEase: 'linear',//cssEase: 'ease-in', //отвечает за анимацию переключения картинок, может делать ее плавной или более резкой. 
        fade: true, //  Эффект затухания при перелистывании слайдов
        //easing:'ease', //позволяет установить особый анимационный режим при переключении картинок.(ease, linear, ease-in, ease-out, ease-in-out, cubic-bezier(0.25, 0.46, 0.45, 0.94),)  
        //infinite: true, //Бесконечное прокручивание (зацикливание)
        lazyLoad: 'progressive', //Тип подгрузки слайдов. Принимает 'ondemand' или 'progressive'
        pauseOnHover: false, //Пауза автопроигрывания при наведении мыши
        slidesToShow: 1, //позволяет установить количество картинок, выводимых в видимой зоне. Изначально показывается 1 слайд, но этим значением можно варьировать.
        slidesToScroll: 1, //сообщает слайдеру сколько нужно поменять картинок при переключении
        speed: 1500, //фиксирует скорость, с которой будет осуществляться переключение слайдов.
        dots: false, //Показ/скрытие навигационных точек под слайдером
        //variableWidth: true,
        //аccessibility: true, //отвечает за подключения навигационных кнопок для слайдера – это стрелки вперед и назад, а также кнопки в виде точек.
        //adaptiveHeight: true, //у которого будет изменятся высота родительского контейнера в зависимости от высоты слайдера. В начальных условиях настройка не подключена.
        // asNavFor – устанавливает навигационную связь между двумя слайдерами посредством идентификатора или класса. В начальных условиях параметр соответствует нулевому значению.
        //prevArrow и nextArrow – позволяет изменить внешний вид стандартной навигационной стрелки, которая отлистывает предыдущий слайд.
        // prevArrow: '<span class="fa-stack fa-lg sl-prev"></i><i class="fa-angle-left fa-stack-1x"></i></span>',
        // nextArrow: '<span class="fa-stack fa-lg sl-next"></i><i class="fa-angle-right fa-stack-1x"></i></span>',
        nextArrow: '<button class="fa fa-angle-right slick-prev" aria-hidden="true"></button>',
        prevArrow: '<button class="fa fa-angle-left slick-next" aria-hidden="true"></button>',
        //centerMode: true, //фиксирует текущий слайд по центру родительского контейнера
        //centerPadding:true, //при включенном центральном режиме показа текущего слайда (предыдущий параметр) устанавливает для этого слайда внутренний отступ, что визуально позволяет увеличивать текущий слайд.
        //customPaging – позволяет вставлять собственный шаблон для просмотра слайдера.
        //draggable: true, // подключает возможность перелистывания слайдов зажатием мышки. То есть, если навести на слайдер курсор мыши, зажать ее и передвинуть в сторону, то и слайд переключится на следующий.
        //focusOnSelect: true, // фокусирует заданный элемент слайдера.
        //rtl: false //зеркальное направление слайдеров
        //edgeFriction – отключает переключение слайдов на последнем элементе. Срабатывает только в том случае, если слайдер не зациклен.
        //pauseOnDotsHover: false, //Пауза автопроигрывания при наведении мыши на навигационные точки
        //respondTo: 'window', // вызывает реакцию на изменения ширины окна браузера. Для использования доступны три значения: 'window', 'slider' или 'min'.   
        //slide: '.sl_block', //Запрос элемента для использования в качестве слайда
        //variableWidth: true, //– адаптирует ширину контейнеров слайдера под ширину каждой показываемой картинки.
        //edgeFriction: 2.5, //Сопротивление при попытки прокрутить карусель, когда дальше нет слайдов и она не зацилена
        //initialSlide: 0, Номер слайда, с которого начинать показ
        //rows: 1, // Установка этого параметра более 1 инициализирует режим сетки. Используйте slidesPerRow для определения количества слайдов в каждой строке.
        responsive: [{
            breakpoint: 1024,
            settings: {
                lazyLoad: 'ondemand',
                speed: 3500,
                //slickSetOption:true,
            }
        }, {
            breakpoint: 768,
            settings: {
                dots: false,
            }
        }]
    });
/*magnificPopup*/
    $(".item-img > a").addClass("miup");
    $(".miup").magnificPopup({
        type:'image',
        closeOnContentClick: true,
        closeBtnInside: false,
        fixedContentPos: true,
        mainClass: 'mfp-no-margins mfp-with-zoom',
        image: {
                verticalFit: true
            },
        zoom: {enabled: true, duration:300}
    });
//липкое меню
var objToStick = $("#g-header"); //Получаем нужный объект
    var topOfObjToStick = $(objToStick).offset().top; //Получаем начальное расположение нашего блока
    $(window).scroll(function () {
        var windowScroll = $(window).scrollTop(); //Получаем величину, показывающую на сколько прокручено окно
        if (windowScroll > topOfObjToStick) { // Если прокрутили больше, чем расстояние до блока, то приклеиваем его
            $(objToStick).addClass('stickynav');
        } else {
            $(objToStick).removeClass("stickynav");
        };
    });
});


/*mixitup*/
    var containerEl = document.querySelector('[data-ref~="mixcont-container"]');
    var mixer = mixitup(containerEl, {
    selectors: {
    target: '[data-ref~="mixcont-target"]'
    }
    })