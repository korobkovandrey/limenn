				
setTimeout(function(){
	$('input[name="email3"],input[name="info"],input[name="text"]').attr('value','').val('');
},5000);    
$(document).on('af_complete', function(event, response) {
    if (response.success == true) {
    	$.fancybox.close();
        $.fancybox.open({
            src: '.modal-success',
            type: 'inline',
            opts: {
            	infobar: true,
            	autoFocus: false
            }
        });	
    }
});					

$('.header-phone__button').click(function(){
	var $a_callbackkiller =  $('a.callbackkiller');
	if($a_callbackkiller.length){
        $a_callbackkiller.get(0).dispatchEvent(
            new MouseEvent('click', {
                view: window,
                bubbles: true,
                cancelable: true
            })
        );
        return false;
	}
});