$(document).on ('turbolinks:load', function (){
	$('.destroy_task').on('ajax:success', function(){
		$(this).closest('.tasks').remove()
	});
});

		