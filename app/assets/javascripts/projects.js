
$(document).on('turbolinks:load', function(){
    // the "href" attribute of the modal trigger must specify the modal ID that wants to be triggered
	$('.modal').modal();
	// $('modal1').modal('open');
});

$(document).on('turbolinks:load', function(){
	$('.destroy_project').on ('ajax:success', function(){
		$(this).closest('.project').remove()
	});
});

	

		