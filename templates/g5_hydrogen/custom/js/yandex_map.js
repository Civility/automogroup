

function init() {
    var map = new ymaps.Map('map', {
        center: [55.76, 37.64],
        zoom: 6,
        controls: ['geolocationControl']
        }, {
            searchControlProvider: 'yandex#search'
        }),

/*******************************clusterer***************************************/
        clusterer = new ymaps.Clusterer({
           /*  clusterIcons: [
            {
                href: 'img/burger.png',
                size: [100, 100],
                offset: [-50, -50]
            }
        ],*/
            // Макет метки кластера pieChart.
            clusterIconLayout: 'default#pieChart',
            // Радиус диаграммы в пикселях.
            clusterIconPieChartRadius: 25,
            // Радиус центральной части макета.
            clusterIconPieChartCoreRadius: 10,
            // Ширина линий-разделителей секторов и внешней обводки диаграммы.
            clusterIconPieChartStrokeWidth: 3,
            // Определяет наличие поля balloon.
            hasBalloon: false
        }),

        /*******************************clusterer***************************************/
            myCollection = new ymaps.ObjectManager({
            // Чтобы метки начали кластеризоваться, выставляем опцию.
            clusterize: true,
            // ObjectManager принимает те же опции, что и кластеризатор.
            gridSize: 64,
            // Макет метки кластера pieChart.
            clusterIconLayout: "default#pieChart",
            // На карте будут отображаться только объекты с заданными типами.
        });
        var zoomControl = new ymaps.control.ZoomControl({
            options: {
                size: "small"
            }
        });
        map.controls.add(zoomControl);

    // Создаем массив с данными.
       var placemarks = [
            {   'city_name': 'Москва',
                coords: [55.719744, 37.727544], 
                name: 'Купить аккумулятор.ру',
                firm: 'ООО Лом АКБ',
                city: 'Москва',
                address: '1-й Грайвороновский пр., д. 4',
                phone: '+7 (499) 650-52-09, +7 (499) 650-55-55',
                mail: 'info@kupit-akkumulyator.ru',
                site: 'kupit-akkumulyator.ru',          },
            {   coords: [55.825836, 37.573292], 
                name: 'АКБ Авто',
                firm: 'ООО БестТрейдМаркет',
                city: 'Москва',
                address: 'Дмитровское шоссе, д. 14, стр. 1',
                phone: '(495) 984-33-50',
                mail: '',
                site: 'akbauto.ru',          },
            {   coords: [55.595235, 37.736732], 
                name: 'АКБ Авто',
                firm: 'ООО ВиН',
                city: 'Москва',
                address: 'МКАД 23 км, вл. 6',
                phone: '(495) 984-33-96',
                mail: '',
                site: 'akbauto.ru',          },
            {   coords: [55.813946, 37.599902], 
                name: 'Фурт АКБ',
                firm: '',
                city: 'Москва',
                address: 'ул Руставелли 19',
                phone: '+7 (916) 707-83-63',
                mail: '',
                site: 'furtakb.ru',
                brend:'Hugel',          },
            {   coords: [55.803486, 37.933686], 
                name: 'РосЕвроИмпорт 500ампер',
                firm: 'ООО РосЕвроИмпорт',
                city: 'МО',
                address: 'Балашиха, ул. Советская, д. 19Д',
                phone: '8 (906) 062 07 78; 8 (926) 257 43 21; 8 (498) 720 78 94',
                mail: '',
                site: '500amper.ru',
                brend:'Hugel, AutoSock',          },
            {   coords: [55.767434, 37.876636], 
                name: 'РосЕвроИмпорт 500ампер',
                firm: 'ООО РосЕвроИмпорт',
                city: 'МО',
                address: 'Реутов, ул. Фабричная 12 (база Медтрейд)',
                phone: '8 (906) 062 07 78; 8 (926) 257 43 21; 8 (498) 720 78 94',
                site: '500amper.ru',
                mail: '',
                brend:'Hugel, AutoSock',            
            },
            {   coords: [55.471980, 37.544234], 
                name: 'AutoSock Shop',
                firm: 'ИП Казак Я.И. ООО Бельворс',
                city: 'Москва',
                address: 'поселок Знамя Октября, мкр. Родники д.1',
                phone: '+ 7 (499) 393-32-36',
                mail: 'autosock@bk.ru',
                site: 'autosockshop.ru',
                brend:'AutoSock',             
            },
            {   coords: [55.617197, 37.716354], 
                name: 'Автокомфорт',
                firm: '',
                city: 'Москва',
                address: 'Каширское шоссе, 61, корп. 3а, этаж 0,',
                phone: '7 926 520 01 11',
                mail: '',
                site: 'avtocomf.ru',
                brend:'AutoSock',             
            },
            {   coords: [55.734288, 37.398033], 
                name: 'Спецшина',
                firm: 'ООО ПСТ',
                city: 'Москва',
                address: 'Молодогвардейская, 54, стр. 6',
                phone: '8 (495) 1500-439',
                mail: 'specshyna@gmail.com ',
                site: 'specshyna.ru',
                brend:'AutoSock',
                clusterCaption:'AutoSock',
            },
            {   coords: [57.661371, 39.844649], 
                name: 'магазин Аккумуляторы',
                firm: 'ИП Киреев А.Д.',
                city: 'Ярославль',
                address: 'проспект Октября, 94В',
                phone: '8(4852) 68 17 03',
                mail: 'kireev1509@gmail.com',
                site: ' АКБТУT.РФ',
                brend:'Hugel',
                clusterCaption:'Hugel',
            },
        ], geoObjects= [];

    for (var i = 0, len = placemarks.length; i < len; i++) {
         var point = placemarks[i];
            myCollection.add(geoObjects[i] = new ymaps.Placemark(point.coords,
            {
                balloonContentHeader: ['<h3>' + point.name + '</h3>' ],
                balloonContentBody: ['<p><b>Сайт:</b>\n'  + '<a href="https://'+ point.site +'" target="_blank">'  + point.site + '</a></p>'+ 
                "<p>" + '<b>Адрес:</b>\n' + point.city + ',' + point.address +  "</p>" +'<p><b>Телефон:</b>\n' + '<tel>' + point.phone + '</tel></p>'],
                balloonContentFooter: ['<p><b>Бренд:</b>\n' + point.brend + '</p>'],
                    //hintContent: point.name,
                   // iconContent: point.brend
                    iconCaption: point.name
            },
            {  
/*                iconLayout: 'default#image',
                iconImageHref: 'img/sprite.png',
                iconImageSize: [46, 57],
                iconImageOffset: [-23, -57],
                iconImageClipRect: [[415, 0], [461, 57]]*/

            }));
    }
    /**/
    clusterer.add(geoObjects);
    map.geoObjects.add(clusterer);
/**/

///////////////////////////////////SearchControl/////////////////////////////////
    // Создаем экземпляр класса ymaps.control.SearchControl
    var mySearchControl = new ymaps.control.SearchControl({
        options: {
            // Заменяем стандартный провайдер данных (геокодер) нашим собственным.
            provider: new CustomSearchProvider(placemarks),
            // Не будем показывать еще одну метку при выборе результата поиска,
            // т.к. метки коллекции myCollection уже добавлены на карту.
            noPlacemark: true,
            resultsPerPage: 5
        }});

    // Добавляем контрол в верхний правый угол,
    map.controls
        .add(mySearchControl, { float: 'right' });
}
// Провайдер данных для элемента управления ymaps.control.SearchControl.
// Осуществляет поиск геообъектов в по массиву points.
// Реализует интерфейс IGeocodeProvider.
function CustomSearchProvider(points) {
    this.points = points;
}
// Провайдер ищет по полю text стандартным методом String.ptototype.indexOf.
CustomSearchProvider.prototype.geocode = function (request, options) {
    var deferred = new ymaps.vow.defer(),
        geoObjects = new ymaps.GeoObjectCollection(),
    // Сколько результатов нужно пропустить.
        offset = options.skip || 0,
    // Количество возвращаемых результатов.
        limit = options.results || 20;
        
    var points = [];
    // Ищем в свойстве text каждого элемента массива.
    for (var i = 0, l = this.points.length; i < l; i++) {
        var point = this.points[i];
        if (point.name.toLowerCase().indexOf(request.toLowerCase()) != -1) {
            points.push(point);
        }
        if (point.firm.toLowerCase().indexOf(request.toLowerCase()) != -1) {
            points.push(point);
        }
        if (point.city.toLowerCase().indexOf(request.toLowerCase()) != -1) {
            points.push(point);
        }
        if (point.address.toLowerCase().indexOf(request.toLowerCase()) != -1) {
            points.push(point);
        }
        if (point.brend.toLowerCase().indexOf(request.toLowerCase()) != -1) {
            points.push(point);
        }

    }
    // При формировании ответа можно учитывать offset и limit.
    points = points.splice(offset, limit);
    // Добавляем точки в результирующую коллекцию.
    for (var i = 0, l = points.length; i < l; i++) {
        var point = points[i],
            coords = point.coords;
                    name = point.name;
                    brend = point.brend;
                    city = point.city;

         geoObjects.add(new ymaps.Placemark(coords, {
            name: name + ' (' + city  + ')',
            description: brend,
            balloonContentBody: '<p>' + name + '</p>',
            boundedBy: [coords, coords]
        }));
    }
        deferred.resolve({
        // Геообъекты поисковой выдачи.
        geoObjects: geoObjects,
        // Метаинформация ответа.
        metaData: {
            geocoder: {
                // Строка обработанного запроса.
                request: request,
                // Количество найденных результатов.
                found: geoObjects.getLength(),
                // Количество возвращенных результатов.
                results: limit,
                // Количество пропущенных результатов.
                skip: offset
            }
        }
    });
        
    // Возвращаем объект-обещание.
    return deferred.promise();
///////////////////////////////////SearchControl/////////////////////////////////
};
ymaps.ready(init);