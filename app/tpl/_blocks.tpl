{block 'block_map_script'}
    <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
    <script>
        ymaps.ready(init);
        var settingMap = {($_modx->resource.main_map_map | replace : "[" : "[ ") ?: '{"coords":{"center":[56.183630,43.921347],"zoom":14},"type":"yandex#map","placemarks":[{"coords":[56.183630,43.921347],"params":{"color":"blue","iconContent":"","balloonContentBody":"","balloonContentHeader":""}},{"coords":[56.180722,43.910168],"params":{"color":"blue","iconContent":"","balloonContentBody":"","balloonContentHeader":""}}],"polygons":[],"lines":[],"routes":[]}'},
            myMap;

        function init() {
            var optionsMap = {
                'center': [56.183630, 43.921347],
                'zoom': 14
            };
            if(settingMap['coords'] && settingMap['coords']['center'] || false){
                optionsMap['center'] = settingMap['coords']['center'];
            }
            if(settingMap['coords'] && settingMap['coords']['zoom'] || false){
                optionsMap['zoom'] = settingMap['coords']['zoom'];
            }
            myMap = new ymaps.Map("map", {
                center: optionsMap['center'],
                zoom: optionsMap['zoom']
            });
            myMap.behaviors.disable([
                'scrollZoom'
            ]);

            if(!settingMap['placemarks'] || !settingMap['placemarks'].length){
                myMap.geoObjects.add(new ymaps.Placemark([56.183630, 43.921347], { }, {
                    iconLayout: 'default#image',
                    iconImageHref: "{$_modx->resource.main_map_image | is_file_exists : ['else' => '/assets/templates/garmonia/img/map-mark.svg']}",
                    iconImageSize: [141, 97.5],
                    iconImageOffset: [-70, -48.5]
                }));
                myMap.geoObjects.add(new ymaps.Placemark([56.180722, 43.910168], { }, {
                    iconLayout: 'default#image',
                    iconImageHref: "{$_modx->resource.main_map_image | is_file_exists : ['else' => '/assets/templates/garmonia/img/map-mark.svg']}",
                    iconImageSize: [141, 97.5],
                    iconImageOffset: [-70, -48.5]
                }));
            }else{
                for(var i = 0; i < settingMap['placemarks'].length; i++){
                    if(!settingMap['placemarks'][i]['coords']){
                        continue;
                    }
                    myMap.geoObjects.add(new ymaps.Placemark(settingMap['placemarks'][i]['coords'], { }, {
                        iconLayout: 'default#image',
                        iconImageHref: "{$_modx->resource.main_map_image | is_file_exists : ['else' => '/assets/templates/garmonia/img/map-mark.svg']}",
                        iconImageSize: [141, 97.5],
                        iconImageOffset: [-70, -48.5]
                    }));
                }
            }
        }
    </script>
{/block}

{block 'gallery'}
{'getImageListPDO' | snippet : [
    'tvname' => 'content_gallery',
    'tplWrapper' => '@INLINE <div class="fotorama" data-loop="true" data-nav="thumbs" data-thumbmargin="15" data-thumbwidth="51" data-thumbheights="52" data-thumbborderwidth="4" data-allowfullscreen="true" data-thumbmargin="0" data-width="100%">{$output}</div>',
    'tpl' => '@INLINE {$image | is_file_exists : (\'@INLINE <img height="118px" src="{$src | phpthumbon1 : [\\\'w\\\' => 1600, \\\'h\\\' => 1200, \\\'far\\\' => 0]}" alt="\' ~ ($alt | striptags | htmlent) ~ \'" title="\' ~ ($title | striptags | htmlent) ~ \'" data-caption="\' ~ ($title | striptags | htmlent) ~ \'">\')}'
]}
{/block}

{block 'video'}
    {if $_modx->resource.content_video_file}
        <video controls="controls" poster="{$_modx->resource.content_video_poster}">
            <source src="{$_modx->resource.content_video_file}" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
            Тег video не поддерживается вашим браузером.
        </video>
    {elseif $_modx->resource.content_video_link}
        <div class="video-youtube">
            <iframe src="{$_modx->resource.content_video_link}" frameborder="0"{($_modx->resource.content_video_link | match : 'vimeo') ? ' webkitallowfullscreen mozallowfullscreen' : ''} allowfullscreen></iframe>
        </div>
    {/if}
{/block}

{block 'video_host'}
    {if $_modx->resource.content_video_link}
        <div class="video-youtube">
            <iframe src="{$_modx->resource.content_video_link}" frameborder="0"{($_modx->resource.content_video_link | match : '*vimeo*') ? ' webkitallowfullscreen mozallowfullscreen' : ''} allowfullscreen></iframe>
        </div>
    {elseif $_modx->resource.content_video_file}
        <video controls="controls" poster="{$_modx->resource.content_video_poster}">
            <source src="{$_modx->resource.content_video_file}" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
            Тег video не поддерживается вашим браузером.
        </video>
    {/if}
{/block}

{block 'partners'}
{'getImageListPDO' | snippet : [
    'tvname' => 'content_partners',
    'tpl' => '@INLINE
                <div class="partner">
					<div>
						<p>Банк</p>
                        {$image | is_file_exists : (\'@INLINE <img src="{$src | phpthumbon1 : [\\\'w\\\' => 120, \\\'far\\\' => 0]}" alt="\' ~ ($title | striptags | htmlent) ~ \'">\')}
						<a href="#feedback" class="partner-trigger" data-partner="{$title | striptags | htmlent}">Заказать расчет</a>
					</div>
					<div>
						<p>Контакты</p>
						{$text}
					</div>
					<div>
						<p>Минимальная % ставка</p>
						<p>{$percent | smart_wrap}</p>
					</div>
					<div>
						<p>Срок кредитования</p>
						<p>{$term | smart_wrap}</p>
					</div>
				</div>'
]}
{/block}

{block 'files'}
{'getImageListPDO' | snippet : [
    'tvname' => 'content_files',
'tplWrapper' => '@INLINE <div class="documentation">{$output}</div>',
    'tpl' => '@INLINE
        {if $file || $file_link}
        <div>
            {$image | is_file_exists : (\'@INLINE <img src="{$src}" alt="\' ~ ($name | striptags | htmlent) ~ \'">\')}
            <p>{$name}</p>
            {if $file}
            <a href="{$file}" download>Скачать</a>
            {else}
            <a href="{$file_link}" target="_blank">Перейти</a>
            {/if}
        </div>
        {/if}'
]}
{/block}