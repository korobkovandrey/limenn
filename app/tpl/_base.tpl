{use 'template:Блоки'}
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    {'!rsMeta' | snippet}

    <base href="{'site_url' | option}">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--meta property="og:image" content="path/to/image.jpg"-->
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/assets/templates/garmonia/img/favicon/favicon-16x16.png" type="image/png" sizes="16x16">
    <link rel="icon" href="/assets/templates/garmonia/img/favicon/favicon-32x32.png" type="image/png" sizes="32x32">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="apple-mobile-web-app-title" content="ЖК Лайм">
    <meta name="application-name" content="ЖК Лайм">
    <meta name="msapplication-TileColor" content="#e6ffc7">
    <meta name="msapplication-TileImage" content="/mstile-150x150.png">
    <meta name="theme-color" content="#e6ffc7">
    <meta name="msapplication-navbutton-color" content="#000">
    <meta name="apple-mobile-web-app-status-bar-style" content="#000">

    <style>body { opacity: 0;overflow-x: hidden;} html { background-color: #fff; } .necessaty_fields{ display: none; }</style>

</head>
<body>
<!-- start header -->
<header class="header">
    <div class="header-row">
        <div class="header-logo">
            <a href="/">
                <img class="header-logo__1" src="{('/assets/files/images/' ~ ('app_site_logo' | option)) | is_file_exists}" alt="harmony">
                <img class="header-logo__2" src="{('/assets/files/images/' ~ ('app_site_logo_mobile' | option)) | is_file_exists}" alt="harmony">
            </a>
        </div>
        <nav class="header-nav">
            <div>
            {'pdoMenu' | snippet : [
                'parents' => 0,
                'level' => 1,
                'limit' => 5
            ]}
            </div>
            <div class="header-nav__modal-btn">
                <a href="#feedback" rel="nofollow" class="modalbox button-modal header-phone__button">Заказать звонок</a>
                <p>Перезвоним в течение 5 минут</p>
            </div>
        </nav>
{if ('/assets/files/' ~ ('app_music_file' | option)) | is_file_exists }
        <div class="header-music">
            <div class="header-music__wrap">
                <div class="index_anspin__spinner animate-spinner animate-spinner-block">
                    <div class="index_anspin__spinner-item animate-spinner-block__item"></div>
                    <div class="index_anspin__spinner-item animate-spinner-block__item"></div>
                    <div class="index_anspin__spinner-item animate-spinner-block__item"></div>
                    <div class="index_anspin__spinner-item animate-spinner-block__item"></div>
                    <div class="index_anspin__spinner-item animate-spinner-block__item"></div>
                </div>
                    <span>Музыка выключена</span>
                    <audio id="music-main" loop="loop" src="{('/assets/files/' ~ ('app_music_file' | option)) | is_file_exists}"></audio>
            </div>
        </div>
{/if}
        <div class="header-phone">
            <div class="header-phone__flag">
                <div>
                    <a data-href="tel:{'app_site_phone' | option | site_phone : 'clean'}" class="header-phone__link lptracker_phone">{'app_site_phone' | option}</a>
                    <p class="header-text__mob">Перезвоним в течение 5 минут</p>
                </div>
                <div>
                    <a href="#feedback" rel="nofollow" class="modalbox button-modal header-phone__button">Заказать звонок</a>
                </div>
                <p class="header-text__no_fix">Перезвоним в течение 5 минут</p>
            </div>
            <div class="header-nav__mob">
                <div class="menu-bar">
                    <span></span>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- end header -->

{block 'page_header'}
    <!-- start page-header -->
    <section class="page-header" style="background: url({$_modx->resource.header_bg_image | is_file_exists : [
        'else' => '/assets/templates/garmonia/img/news-page.jpg);"'
    ]});">
        <div class="wrapper">
            <h1 class="page-header__title">{'header_title' | snippet}</h1>
            {if $_modx->resource.header_menu}
            {'pdoMenu' | snippet : [
                'parents' => $_modx->resource.header_menu,
                'level' => 1,
                'useWeblinkUrl' => 1
            ]}
            {/if}

        </div>
    </section>
    <!-- end page-header -->
{/block}

{block 'content'}{/block}

<!-- start footer -->
<footer class="footer">
    <div class="wrapper">
        <div class="footer-top">
            <div class="footer-top__row">
                <div class="footer-top__column footer-top__column-logo">
                    <a href="/">
                        <img src="{('/assets/files/images/' ~ ('app_site_logo' | option)) | is_file_exists}" alt="harmony">
                    </a>
                    <ul class="footer-social">
                        {if 'app_social_link_fb' | option}
                        <li>
                            <a href="{'app_social_link_fb' | option}">
                                <img src="/assets/templates/garmonia/img/facebook-white.svg" alt="harmony">
                            </a>
                        </li>
                        {/if}
                        {if 'app_social_link_ok' | option}
                        <li>
                            <a href="{'app_social_link_ok' | option}">
                                <img src="/assets/templates/garmonia/img/odnoklassniki-white.svg" alt="harmony">
                            </a>
                        </li>
                        {/if}
                        {if 'app_social_link_youtube' | option}
                        <li>
                            <a href="{'app_social_link_youtube' | option}">
                                <img src="/assets/templates/garmonia/img/youtube-white.svg" alt="harmony">
                            </a>
                        </li>
                        {/if}
                        {if 'app_social_link_vk' | option}
                        <li>
                            <a href="{'app_social_link_vk' | option}">
                                <img src="/assets/templates/garmonia/img/vk-white.svg" alt="harmony">
                            </a>
                        </li>
                        {/if}
                        {if 'app_social_link_instagram' | option}
                        <li>
                            <a href="{'app_social_link_instagram' | option}">
                                <img src="/assets/templates/garmonia/img/instagram-white.svg" alt="harmony">
                            </a>
                        </li>
                        {/if}
                    </ul>
                </div><!-- col(1) -->
                <div class="footer-top__column footer-top__column-menu">
                    <nav class="footer-top__column-nav">
                        <ul>
                            <li><a href="{6 | url}">О комплексе</a></li>
                            <li><a href="{13 | url}">Новости</a></li>
                            <li><a href="{16 | url}">Ход строительства</a></li>
                        </ul>
                        <ul>
                            <li><a href="{7 | url}">Выбрать квартиру</a></li>
                        </ul>
                        <ul>
                            <li><a href="{8 | url}">Условия покупки</a></li>
                            <li><a href="#feedback">Ипотека</a></li>
                        </ul>
                        <ul>
                            <li><a href="{9 | url}">Удобное расположение</a></li>
                            <li><a href="{14 | url}">Инфраструктура</a></li>
                            <li><a href="#feedback">Благоустройство</a></li>
                        </ul>
                        <ul>
                            <li><a href="{10 | url}">Контакты</a></li>
                        </ul>
                    </nav>
                </div><!--col(2)-->
                <div class="footer-top__column footer-top__column-info">
                    <div class="footer-top__column-last">
                        <a href="#feedback" rel="nofollow" class="modalbox btn-primary footer-top__link">Документы по проекту<img
                                    src="/assets/templates/garmonia/img/doc-white.svg" alt="harmony"></a>
                        <a data-href="tel:{'app_site_phone' | option | site_phone : 'clean'}" class="footer-top__phone lptracker_phone">{'app_site_phone' | option}</a>
                        <a href="mailto:{'app_site_email' | option}" class="footer-top__mail">{'app_site_email' | option}</a>
                    </div>
                </div><!--col(3)-->
            </div>
        </div><!-- footer-top -->
        <div class="footer-bottom">
            <div class="footer-bottom__column">
                <p>© ЖК «Лайм»</p>
            </div>
            <div class="footer-bottom__column">
                <p>Информация на сайте не является публичной офертой.</p>
                <p class="fz-links">{'fz_Links' | placeholder}</p>
            </div>
            <div class="footer-bottom__column">
                <p class="footer-bottom__column-map">Нижегородская область, Богородский район, дер. Кусаковка, ул. Полевая, д. 58</p>
            </div>
            <div class="footer-bottom__column">
                <a class="made-by" href="//riverstart.ru/"></a>
            </div>
        </div>
    </div>
</footer>
<!-- end footer -->
<div class="modal-success">
    <div class="modal-success__close"></div>
    <p>Ваши данные успешно отправлены. Презентацию можно получить по <a href="/assets/templates/garmonia/main-music.mpga" download>ссылке</a>.</p>
</div><!-- modal-success -->
<div class="arrow-top"></div><!-- arrow-top -->
<div class="modal-call" id="feedback">
    <div class="modal-call_wrap">
        <h2 class="modal-call__title">Заказать обратный звонок</h2>
        <p class="modal-call__text">Ваш личный менеджер сможет не только ответить на ваши вопросы, но и сделает лучшее предложение</p>
        {'!AjaxForm'|snippet:[
        'snippet'=>'FormIt',
        'frontend_js'=>'',
        'hooks'=>'spam,FormItSaveForm,email',
        'emailSubject'=>'Форма У вас появились вопросы?',
        'formName'=>'Форма У вас появились вопросы?',
        'emailTo'=>'+app_email_to'|placeholder,
        'emailFrom'=>'+app_email_from'|placeholder,
        'emailFromName'=>'+app_email_sender'|placeholder,
        'submitVar'=>'form_feedback',
        'spamEmailFields'=>'email2',
        'validate'=>'name:required, email2:email:required, email:blank, info:blank, text:blank, email3:blank',
        'formFields'=>'id,date,name,phone,email2,comment,services',
        'fieldNames'=>'id==Страница,name==Имя,phone==Телефон,email2==E-mail,comment==Сообщение',
        'successMessage'=>'+app_email_success'|placeholder,
        'validationErrorMessage'=>'+app_email_error'|placeholder,
        'emailTpl'=>'MAIL_TPL',
        'form' => '@INLINE
    <form class="callback" method="POST">
        <div class="contacts-descr__input">
            <span class="contacts-descr__input-text">Имя</span>
            <input type="text" name="name" placeholder="Имя" required minlength="3">
        </div>
        <div class="necessaty_fields"><input type="text" value="1" name="info"/></div>
        <div class="contacts-descr__input">
            <span class="contacts-descr__input-text">Телефон</span>
            <input class="input-phone" type="tel" name="phone" placeholder="Телефон" minlength="8">
        </div>
        <div class="necessaty_fields"><input type="text" value="text" name="text"/></div>
        <div class="contacts-descr__input">
            <span class="contacts-descr__input-text">E-mai</span>
            <input type="email" name="email2" placeholder="E-mail" required minlength="6">
            <input type="hidden" name="email" placeholder="E-mail">
        </div>
        <div class="necessaty_fields"><input type="text" value="test@test.ru" name="email3"/></div>
        <div class="contacts-descr__input">
            <label class="contacts-descr__input-checkbox">
                <input checked="checked" type="checkbox" name="compliance">
                <span class="custom-checkbox"></span>
                <span class="checkbox-text">Согласие на обработку персональных данных</span>
            </label>
        </div>
        <p class="contacts-descr__notification">Все поля обязательны к заполнению</p>
        <input type="hidden" name="id" value="{$_modx->resource.id}">
        <input type="hidden" name="form_feedback" value="1">
        <input type="hidden" name="partner_title" value="">
        <div class="contacts-descr__link">
            <button class="btn-primary submit">Получить консультацию</button>
        </div>
        <p class="contacts-descr__text">Мы обещаем, что ваши данные не будут переданы третьим лицам.</p>
    </form>',
        ]}
    </div>
</div>
<link rel="stylesheet" href="{'!filectime_path' | snippet : ['path' => '/assets/templates/garmonia/css/main.min.css']}">
<link rel="stylesheet" href="{'!filectime_path' | snippet : ['path' => '/assets/templates/garmonia/css/added.css']}">
<script src="/assets/templates/garmonia/js/jquery-2.1.1.min.js"></script>
<script src="{'!filectime_path' | snippet : ['path' => '/assets/templates/garmonia/js/scripts.min.js']}"></script>
<script src="/assets/components/ajaxform/js/default.js"></script>
<script src="{'!filectime_path' | snippet : ['path' => '/assets/templates/garmonia/js/addon.js']}"></script>
{block 'map_script'}{/block}

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){ w[l]=w[l]||[];w[l].push({ 'gtm.start':
        new Date().getTime(),event:'gtm.js' });var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-569D4TM');</script>
<!-- End Google Tag Manager -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-569D4TM"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

</body>
</html>
