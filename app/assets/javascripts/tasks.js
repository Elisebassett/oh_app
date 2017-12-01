$(document).on('turbolinks:load', function(){
  
  $('.switch input[type=checkbox]').change(function(e){
  	e.stopPropagation();
  	console.log($(this).is(':checked'));
  	var id = $(this).closest('.task_container').attr('data-id');
  	$.ajax({
  		url: `/tasks/${id}`,
  		type: 'PATCH',
  		data: {complete: $(this).is(':checked')}
  	});
  });
});

$(document).on ('turbolinks:load', function (){
	$('.destroy_task').on('ajax:success', function(){
		$(this).closest('.tasks').remove()
			$('.' + window.task_container).remove(); 
	});
	$('.destroy_task').on('click', function(){
		window.task_container = $(this).closest('.tasks').attr('class').split(' ')[0];
	}); 
});
