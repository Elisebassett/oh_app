$(document).on('turbolinks:load', function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
	$('.modal').modal();
	// $('modal1').modal('open');
});

	$(document).on('turbolinks:load', function(){
		$('.destroy_d').on('ajax:success', function(){
		$('.' + window.department_section).remove()
			$('.destroy_d').on('click', function(){
				window.department_section = $(this).closest('.department').attr('class').split(' ')[4];
			});  	
		});
	});