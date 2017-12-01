$(document).on ('turbolinks:load', function (){
	$('.destroy_task').on('ajax:success', function(){
		$(this).closest('.tasks').remove()
			$('.' + window.task_section).remove(); 
	});
	$('.destroy_task').on('click', function(){
		window.task_section = $(this).closest('.tasks').attr('class').split(' ')[1];
	}); 
});

		