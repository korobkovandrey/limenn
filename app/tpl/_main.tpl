<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>lime</title>
	<meta name="description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!--<meta property="og:image" content="path/to/image.jpg">
	<link rel="shortcut icon" href="/assets/templates/garmonia/img/favicon/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="/assets/templates/garmonia/img/favicon/apple-touch-icon.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/assets/templates/garmonia/img/favicon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/assets/templates/garmonia/img/favicon/apple-touch-icon-114x114.png">-->

	<meta name="theme-color" content="#000">
	<meta name="msapplication-navbutton-color" content="#000">
	<meta name="apple-mobile-web-app-status-bar-style" content="#000">

	<style>body { opacity: 0; overflow-x: hidden; } html { background-color: #fff; }</style>

</head>
<body>
	<div class="modal-success">
		<div class="modal-success__close"></div>
		<p>Ваши данные успешно отправлены. Презентацию можно получить по <a href="/assets/templates/garmonia/main-music.mp3" download>ссылке</a>.</p>
	</div><!-- modal-success -->
	<div class="arrow-top" ></div><!-- arrow-top -->
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
                'form'=>'@INLINE 
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
        				<div class="contacts-descr__link">
        					<button class="btn-primary submit">Получить консультацию</button>
        				</div>
        				<p class="contacts-descr__text">Мы обещаем, что ваши данные не будут переданы третьим лицам.</p>
        			</form>
        		',
        	]}
		</div>
	</div>
	<!-- start header -->
	<header class="header">
		<div class="header-row">
			<div class="header-logo">
				<a href="#">
					<img class="header-logo__1" src="/assets/templates/garmonia/img/logo.svg" alt="harmony">
					<img class="header-logo__2" src="/assets/templates/garmonia/img/logo-2.svg" alt="harmony">
				</a>
			</div>
			<nav class="header-nav">
				<ul>
					<li><a href="#">О комплексе</a></li>
					<li><a href="#">Выбрать таунхаус</a></li>
					<li><a href="#">Условия покупки</a></li>
					<li><a href="#">Расположение</a></li>
					<li><a href="#">Контакты</a></li>
				</ul>
				<div class="header-nav__modal-btn">
					<a href="#feedback" rel="nofollow" class="modalbox button-modal header-phone__button">Заказать звонок</a>
					<p>Перезвоним в течение 5 минут</p>
				</div>
			</nav>
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
					<audio id="music-main" loop="loop" controls='none' src="/assets/templates/garmonia/main-music.mpga"></audio>
				</div>
			</div>
			<div class="header-phone">
				<div class="header-phone__flag">
					<div>
						<a href="tel:+78312136161" class="header-phone__link">+7 (831) <span>213-61-61</span></a>
						<p class="header-text__mob">Перезвоним в течение 5 минут</p>
					</div>
					<div>
						<a href="#feedback" rel="nofollow" class="button-modal header-phone__button">Заказать звонок</a>
					</div>
					<p>Перезвоним в течение 5 минут</p>
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
	<!-- start banner -->
	<section class="banner">
		<div class="banner-cloud  banner-cloud__1"></div>
		<div class="banner-cloud  banner-cloud__2"></div>
		<div class="banner-cloud  banner-cloud__3"></div>
		<div class="banner-cloud  banner-cloud__4"></div>
		<div class="banner-cloud  banner-cloud__5"></div>
		<div class="banner-cloud  banner-cloud__6"></div>
		<div class="banner-cloud  banner-cloud__7"></div>
		<div class="banner-cloud  banner-cloud__8"></div>
		<div class="banner-cloud  banner-cloud__9"></div>
		<div class="banner-cloud  banner-cloud__10"></div>
		<div class="banner-cloud  banner-cloud__11"></div>
		<div class="banner-cloud  banner-cloud__12"></div>
		<div class="banner-cloud  banner-cloud__13"></div>
		<div class="banner-cloud  banner-cloud__14"></div>
		<div class="banner-cloud  banner-cloud__15"></div>
		<div class="banner-cloud  banner-cloud__16"></div>
		<div class="banner-cloud  banner-cloud__17"></div>
		<div class="wrapper">
			<div class="banner-descr">
				<h1 class="banner-descr__title"><span>Жилой комплекс</span>Гармония</h1>
				<p class="banner-descr__subtitle">счастливая история</p>
				<div class="banner-descr__link">
					<a href="#feedback" rel="nofollow" class="modalbox btn-primary">Выбрать таунхаус</a>
				</div>
			</div>
		</div>
		<div class="banner-stock">
			<div class="banner-stock__header">
				<p class="banner-stock__header-text">Акция «НА СТАРТ»</p>
			</div>
			<div class="banner-stock__descr">
				<h5 class="banner-stock__descr-title">Три этажа по цене двух!</h5>
				<p class="banner-stock__descr-text">Только в ЖК Гармония на старте строительства.</p>
				<a href="#feedback" rel="nofollow" class="modalbox banner-stock__descr-link">Подробнее</a>
			</div>
		</div>
		<div class="to_down">
			<div class="mouse-icon">
				<div class="weel"></div>
			</div>
		</div>
	</section>
	<!-- end banner -->
	<!-- start about -->
	<section class="about">
		<div class="wrapper">
			<div class="section-header">
				<div class="section-header__ico">
					<picture>
					 	<source srcset="/assets/templates/garmonia/img/section-ico-1.svg" type="image/svg+xml">
					 	<img src="/assets/templates/garmonia/img/section-ico-1.png" alt="harmony">
					</picture>
				</div>
				<h2 class="section-header__title">Концепция живого поселка</h2>
			</div>
			<div class="about-wrap">
				<div class="about-descr">
					<p class="about-descr__text about-descr__first">Наш жилой квартал не случайно называется «Гармония». Проектируя его, мы хотели, чтобы жизнь в нем протекала гармонично. Собрав все лучшее из опыта строительства в одном месте, мы постарались создать для жильцов максимум комфорта. При этом стоимость жилья будет оставаться на уровне <a href="#">«эконом».</a></p>
					<p class="about-descr__text about-descr__last">Мы дарим вам: озеленение дворов, оригинальные клумбы с элементами ландшафтного дизайна, креативно-оформленные входные группы, каждый подъезд уникален и имеет свою цветовую гамму, неподалеку расположился лесной массив, <a href="#">чистый воздух</a> и удаленность от загазованных улиц</p>
					<a href="#feedback" rel="nofollow" class="modalbox btn-primary about-descr__link">Подробнее о комплексе</a>
				</div>
			</div>
		</div>
	</section>
	<!-- end about -->
	<!-- start advantages -->
	<section class="advantages">
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-1.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Доступная<br>ипотека</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(1) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-2.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Все нужное — рядом</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(2) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-3.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Безопасность и защищенность</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(3) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-4.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Экологически чистый район</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(4) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-5.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Улучшенная черновая отделка</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(5) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-6.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Выгода и правильный<br>расчет</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(6) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-7.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Эстетика<br>и красота</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(7) -->
		<div class="advantages-column" style="background: url(/assets/templates/garmonia/img/advantages-8.jpg);">
			<div class="advantages-column__descr">
				<h4 class="advantages-column__descr-title">Комфорт и удобство</h4>
				<p class="advantages-column__descr-text">Детские сады, спортивные площадки, лужайки, магазины — все в шаговой доступности.</p>
			</div>
		</div><!-- col(8) -->
	</section>
	<!-- end advantages -->
	<!-- start offers -->
	<section class="offers">
		<div class="wrapper">
			<h2 class="section-header__title offers-title">Специальные предложения</h2>
			<div class="offers-row">
				<div class="offers-column">
					<img class="offers-column__img" src="/assets/templates/garmonia/img/offers-1.png" alt="harmony">
					<div class="offers-column__descr">
						<h4 class="offers-column__title">Недорогой таунхаус для молодоженов</h4>
						<p class="offers-column__text">2х-этажный таунхаус от 3 500 000 руб.</p>
					</div>
					<a href="#feedback" rel="nofollow" class="modalbox offers-column__link">
						<img src="/assets/templates/garmonia/img/arrow-right.svg" alt="harmony">
					</a>
				</div><!-- col(1) -->
				<div class="offers-column">
					<img class="offers-column__img" src="/assets/templates/garmonia/img/offers-2.png" alt="harmony">
					<div class="offers-column__descr">
						<h4 class="offers-column__title">Больше места для большой семьи</h4>
						<p class="offers-column__text">Площади от 70м2 по оптимальной цене.</p>
					</div>
					<a href="#feedback" rel="nofollow" class="modalbox offers-column__link">
						<img src="/assets/templates/garmonia/img/arrow-right.svg" alt="harmony">
					</a>
				</div><!-- col(2) -->
				<div class="offers-column">
					<img class="offers-column__img" src="/assets/templates/garmonia/img/offers-3.png" alt="harmony">
					<div class="offers-column__descr">
						<h4 class="offers-column__title">Уютное жилье для пенсионеров</h4>
						<p class="offers-column__text">Для тех кто больше всего ценит комфорт.</p>
					</div>
					<a href="#feedback" rel="nofollow" class="modalbox offers-column__link">
						<img src="/assets/templates/garmonia/img/arrow-right.svg" alt="harmony">
					</a>
				</div><!-- col(3) -->
			</div>
			<div class="offers-link__all">
				<a href="#feedback" rel="nofollow" class="modalbox">Все акции</a>
			</div>
		</div>
	</section>
	<!-- end offers -->
	<!-- start info -->
	<section class="info">
		<div class="wrapper">
			<div class="section-header info-header">
				<div class="section-header__ico">
					<picture>
					 	<source srcset="/assets/templates/garmonia/img/section-ico-2.svg" type="image/svg+xml">
					 	<img src="/assets/templates/garmonia/img/section-ico-2.png" alt="Olymp">
					</picture>
				</div>
				<h2 class="section-header__title">О застройщике</h2>
			</div>
			<div class="info-wrap">
				<div class="info-descr">
					<div class="info-descr__row">
						<div class="info-descr__column">
							<h4 class="info-descr__column-title">Застройщик - Группа компаний «Альхорс»</h4>
							<p class="info-descr__column-link">
								<a href="#">
									<picture>
									 	<source srcset="/assets/templates/garmonia/img/vk.svg" type="image/svg+xml">
									 	<img src="/assets/templates/garmonia/img/vk.png" alt="Olymp">
									</picture>
									<span>vk.com/alhorsnn</span>
								</a>
							</p>
						</div>
						<div class="info-descr__column info-descr__column-last">
							<img src="/assets/templates/garmonia/img/info-logo.png" alt="harmony">
						</div>
					</div>
					<p class="info-descr__text info-descr__first">«Альхорс» является продолжением успешного развития компании с широким набором компетенций в сфере энергетической промышленности, которая в настоящее время находится в числе лидеров своего сегмента в рамках Приволжского федерального округа. Работы, выполняемые данной компанией, начинаются от проектирования, так же в этот набор входит весь спектр необходимых строительных, монтажных работ и выполнение всех пусконаладочных работ электрооборудования, вплоть до испытаний электроустановок. Таким образом, команда профессионалов, сформированная в атмосфере качественного подхода к выполнению сложных, с точки зрения инженерного дела задач, провела актуальную диверсификацию своих активов и открыла новое направление – жилищное строительство.</p>
					<p class="info-descr__text info-descr__second">На начальном этапе  «Альхорс» осуществляла реализацию проектов, ограничиваясь постройкой малоэтажных строений, однако, начиная с 2015 года, ассортимент предложений был увеличен домами высотой 14 этажей. Впоследствии планируется расширение сегмента высотных домов до 22 этажных строений. А сейчас стартует проект с таунхаусами – Жилой комплекс «Гармония»</p>
					<p class="info-descr__text info-descr__last">«Альхорс» – жильё для каждого должно быть своим!</p>
					<div class="info-descr__links">
						<a href="#feedback" rel="nofollow" class="modalbox btn-primary info-descr__links-first">Документы по проекту<img src="/assets/templates/garmonia/img/info-button-ico-1.svg" alt="harmony"></a>
						<a href="#feedback" rel="nofollow" class="modalbox btn-primary info-descr__links-last">Ход строительства<img src="/assets/templates/garmonia/img/info-button-ico-2.svg" alt="harmony"></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end info -->
	<!-- start mortgage -->
	<section class="mortgage">
		<div class="wrapper">
			<h2 class="mortgage-title__first mortgage-title__first-mob">Ипотека</h2>
			<div class="mortgage-row">
				<div class="mortgage-column mortgage-column__first">
					<h2 class="mortgage-title__first">Ипотека</h2>
					<h2 class="mortgage-title">От 13 000 рублей в месяц<br> Ставки от 10,5%</h2>
					<a href="#feedback" rel="nofollow" class="modalbox mortgage-link">Подробнее об ипотеке</a>
				</div>
				<div class="mortgage-column mortgage-column__last">
					<a href="#feedback" rel="nofollow" class="modalbox mortgage-column__cat">
						<span>Военная ипотека</span>
					</a>
					<a href="#feedback" rel="nofollow" class="modalbox mortgage-column__cat">
						<span>Материнский капитал</span>
					</a>
				</div>
			</div>
			<div class="mortgage-bottom">
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-1.png" alt="harmony">
				</div>
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-2.png" alt="harmony">
				</div>
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-3.png" alt="harmony">
				</div>
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-4.png" alt="harmony">
				</div>
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-5.png" alt="harmony">
					<img src="/assets/templates/garmonia/img/mortgage-logo-6.png" alt="harmony">
				</div>
				<div class="mortgage-bottom__img">
					<img src="/assets/templates/garmonia/img/mortgage-logo-7.png" alt="harmony">
				</div>
			</div>
		</div>
	</section>
	<!-- end mortgage -->
	<!-- start gallery -->
	<section class="gallery">
		<div class="wrapper">
			<div class="section-header gallery-header">
				<div class="section-header__ico">
					<picture>
					 	<source srcset="/assets/templates/garmonia/img/section-ico-3.svg" type="image/svg+xml">
					 	<img src="/assets/templates/garmonia/img/section-ico-3.png" alt="Olymp">
					</picture>
				</div>
				<h2 class="section-header__title">Галерея</h2>
			</div>
		</div>
		<div class="gallery-fotorama">
			<div class="fotorama" data-nav="thumbs" data-loop="true" data-thumbmargin="15" data-thumbwidth="172" data-thumbheights="118" data-thumbborderwidth="4" data-allowfullscreen="true" data-thumbmargin="0" data-width="100%">
				<img height="118px" src="/assets/content/files/images/main/garmonia-fin-1-2.jpg">
				<img height="118px" src="/assets/content/files/images/main/garmonia-fin-2-.jpg">
				<img height="118px" src="/assets/content/files/images/main/garmonia-fin-3-.jpg">
			</div>
		</div>
	</section>
	<!-- end gallery -->
	<!-- start map -->
	<section class="map">
		<div class="wrapper">
			<div class="section-header">
				<div class="section-header__ico">
					<picture>
					 	<source srcset="/assets/templates/garmonia/img/section-ico-4.svg" type="image/svg+xml">
					 	<img src="/assets/templates/garmonia/img/section-ico-4.png" alt="Olymp">
					</picture>
				</div>
				<h2 class="section-header__title">Как к нам приехать?</h2>
			</div>
		</div>
		<div id="map"></div>
	</section>
	<!-- end map -->
	<!-- start contacts -->
	<section class="contacts">
		<div class="wrapper">
			<div class="contacts-header">
				<h2 class="section-header__title contacts-header__title">У вас появились вопросы?</h2>
				<p class="contacts-header__text">Ваш личный менеджер сможет не только на них ответить, но и сделает лучшее предложение</p>
			</div>
			<div class="contacts-descr">
			    
			    {'!AjaxForm'|snippet:[ 
    				'snippet'=>'FormIt',
    				'frontend_js'=>'',
                    'hooks'=>'spam,FormItSaveForm,email',
                    'emailSubject'=>'Форма У вас появились вопросы?',
                    'formName'=>'Форма У вас появились вопросы?',
                    'emailTo'=>'+app_email_to'|placeholder,
                    'emailFrom'=>'+app_email_from'|placeholder,
                    'emailFromName'=>'+app_email_sender'|placeholder,
                    'submitVar'=>'form_contacts',
                    'spamEmailFields'=>'email2',
                    'validate'=>'name:required, email2:email:required, email:blank, info:blank, text:blank, email3:blank',
                    'formFields'=>'id,date,name,phone,email2,comment,services',
                    'fieldNames'=>'id==Страница,name==Имя,phone==Телефон,email2==E-mail,comment==Сообщение',
                    'successMessage'=>'+app_email_success'|placeholder,
                    'validationErrorMessage'=>'+app_email_error'|placeholder,
                    'emailTpl'=>'MAIL_TPL',
                    'form'=>'@INLINE 
        				<form class="callback" method="POST">
        					<div class="success"><span>Спасибо!<br>Мы свяжемся с вами в ближайшее время</span></div>
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
        						<span class="contacts-descr__input-text">E-mail</span>
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
            				<input type="hidden" name="form_contacts" value="1">
        					<div class="contacts-descr__link">
        						<button class="btn-primary submit">Получить консультацию</button>
        					</div>
        					<p class="contacts-descr__text">Мы обещаем, что ваши данные не будут переданы третьим лицам.</p>
        				</form>
				    ',
                ]}
			</div>
		</div>
	</section>
	<!-- end contacts -->
	<!-- start footer -->
	<footer class="footer">
		<div class="wrapper">
			<div class="footer-top">
				<div class="footer-top__row">
					<div class="footer-top__column footer-top__column-logo">
						<a href="#">
							<img src="/assets/templates/garmonia/img/logo.svg" alt="harmony">
						</a>
						<ul class="footer-social">
							<li>
								<a href="#">
									<img src="/assets/templates/garmonia/img/facebook-white.svg" alt="harmony">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="/assets/templates/garmonia/img/odnoklassniki-white.svg" alt="harmony">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="/assets/templates/garmonia/img/youtube-white.svg" alt="harmony">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="/assets/templates/garmonia/img/vk-white.svg" alt="harmony">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="/assets/templates/garmonia/img/instagram-white.svg" alt="harmony">
								</a>
							</li>
						</ul>
					</div><!-- col(1) -->
					<div class="footer-top__column footer-top__column-menu">
						<nav class="footer-top__column-nav">
							<ul>
								<li><a href="#">О комплексе</a></li>
								<li><a href="#">Новости</a></li>
								<li><a href="#">Ход строительства</a></li>
							</ul>
							<ul>
								<li><a href="#">Выбрать квартиру</a></li>
							</ul>
							<ul>
								<li><a href="#">Условия покупки</a></li>
								<li><a href="#">Ипотека</a></li>
							</ul>
							<ul>
								<li><a href="#">Удобное расположение</a></li>
								<li><a href="#">Инфраструктура</a></li>
								<li><a href="#">Благоустройство</a></li>
							</ul>
							<ul>
								<li><a href="#">Контакты</a></li>
							</ul>
						</nav>
					</div><!--col(2)-->
					<div class="footer-top__column footer-top__column-info">
						<div class="footer-top__column-last">
							<a href="#feedback" rel="nofollow" class="modalbox btn-primary footer-top__link">Документы по проекту<img src="/assets/templates/garmonia/img/doc-white.svg" alt="harmony"></a>
							<a href="tel:+78312136161" class="footer-top__phone">+7 (831) <span>213-61-61</span></a>
							<a href="mailto:garmonia52@gmail.com" class="footer-top__mail">garmonia52@gmail.com</a>
						</div>
					</div><!--col(3)-->
				</div>
			</div><!-- footer-top -->
			<div class="footer-bottom">
				<div class="footer-bottom__column">
					<p>© ЖК «Гармония»</p>
				</div>
				<div class="footer-bottom__column">
					<p>Информация на сайте не является публичной офертой.</p>
				</div>
				<div class="footer-bottom__column">
					<p class="footer-bottom__column-map">Нижегородская область, Кстовский район, дер. Ближнее Борисово, ул. Железнодорожная, д. 5</p>
				</div>
				<div class="footer-bottom__column">
					<a href="#">
						<img src="/assets/templates/garmonia/img/logo-footer.png" alt="harmony">
					</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- end footer -->
	<link rel="stylesheet" href="/assets/templates/garmonia/css/main.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="/assets/templates/garmonia/js/scripts.min.js"></script>
	<script src="/assets/components/ajaxform/js/default.js"></script>
	<script src="/assets/templates/garmonia/js/addon.js"></script>
	<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	<script>
		ymaps.ready(init);
		var myMap,
		    myPlacemark;

		function init(){    
	    myMap = new ymaps.Map ("map", {
	        center: [56.183630, 43.921347],
	        zoom: 16
	    });
	    myMap.behaviors.disable([
			  'scrollZoom'
			]);

	    var myPlacemark = new ymaps.Placemark([56.180722, 43.910168], {}, {
	        iconLayout: 'default#image',
	        iconImageHref: '/assets/templates/garmonia/img/map-mark.svg',
	        iconImageSize: [141, 97.5],
	        iconImageOffset: [-70, -48.5]
	    });

		  myMap.geoObjects.add(myPlacemark);
		}
	</script>
	<style>
    	.necessaty_fields{
        	display: none;
        }
	</style>
	
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
