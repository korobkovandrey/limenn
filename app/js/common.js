$(document).ready(function(){

	$('.banner-stock__header').on('click', function(){
		$('.banner-stock').toggleClass('banner-stock__active');
	});

	$(".to_down").click(function(){
		$("html,body").animate({scrollTop: $(window).height()},"slow")
			return false;
	});

	$(window).on('scroll', function(){
		if($(this).scrollTop() > 500){
			$('.header').addClass('header-fixed');
		}
		else{
			$('.header').removeClass('header-fixed');
		}

		if($(this).scrollTop() > 1200)
			$('.arrow-top').addClass('arrow-top__open');
		else
			$('.arrow-top').removeClass('arrow-top__open');
	});



	$('.header-music').on('click', function(){
		if($('#music-main')[0].paused){
	    $('#music-main')[0].play();
	    $('.header-music').find('span').text('Музыка включена');
	    $('.animate-spinner-block__item').css('animation-name','spinner-block-top');
		}
    else{
	    $('#music-main')[0].pause();
	    $('.header-music').find('span').text('Музыка выключена');
	    $('.animate-spinner-block__item').css('animation-name','spinner-block-top-none');
    }
	});

	if($(window).width() < 781)
		$('#music-main')[0].pause();

	$(window).on('resize', function(){
		if($(this).width() < 781)
			$('#music-main')[0].pause();

		//posCol();
	});

	$('.contacts-descr__input input').focus(function(){
	  $(this).data('placeholder',$(this).attr('placeholder')).attr('placeholder','');
	  $(this).prev().addClass('input-name__active');
	}).blur(function(){
	  $(this).attr('placeholder',$(this).data('placeholder'));
	  $(this).prev().removeClass('input-name__active');
	});

	$(".arrow-top").click(function(){
		$("html,body").animate({scrollTop: 0},"slow")
			return false;
	});

	$('.modal-success__close').on('click', function(){
		$('.modal-success').addClass('modal-close');
	});

	$(".modalbox").fancybox();
    $("#f_contact").submit(function(){ return false; });
    $("#f_send").on("click", function(){
         
      $("#f_contact").fadeOut("fast", function(){
          $(this).before("<p><strong>Ваше сообщение отправлено!</strong></p>");
          setTimeout("$.fancybox.close()", 1000);
      });
    });

	//mob menu
	$('.header-nav__mob').on('click', function(){
		$('.header').toggleClass('header-open');
	});


	function deleteC(name,time){
		setTimeout(function(){
			$('.' + name).addClass('div-remove');
		},time);
	}
	deleteC('banner-cloud__1',54000);
	deleteC('banner-cloud__2',44000);
	deleteC('banner-cloud__3',54000);
	deleteC('banner-cloud__4',24000);
	deleteC('banner-cloud__5',34000);
	deleteC('banner-cloud__6',10000);
	deleteC('banner-cloud__7',10000);
	deleteC('banner-cloud__8',34000);
	deleteC('banner-cloud__9',24000);
	deleteC('banner-cloud__10',50000);

	/*var fotoramaDiv = $('.building-fotorama').fotorama(),
			fotorama = fotoramaDiv.data('fotorama'),
			fotoqQuantity = $('.content-building__fotorama-col');
	$(fotoqQuantity).text(fotorama.activeIndex + ' из ' + fotorama.size);

	function posCol(){
		var posW = $('.content-building__fotorama').width(),
				fotoramaW	= $('.fotorama__stage__shaft').width();
		$(fotoqQuantity).css('right', (posW - fotoramaW) / 2 + 'px');
	}
	posCol();*/

});