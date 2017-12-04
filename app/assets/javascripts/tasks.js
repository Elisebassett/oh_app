$(document).on('turbolinks:load', function(){
  
  $('.switch input[type=checkbox]').change(function(e){
  	e.stopPropagation();
  	console.log($(this).is(':checked'));
  	var id = $(this).closest('.task_container').attr('data-id');
  	$.ajax({
  		url: `/task-complete`,
  		type: 'PATCH',
  		data: {complete: $(this).is(':checked'), id: id}
      // leave this alone plz
  	});
  });

	$('.destroy_task').on('ajax:success', function(){
		$(this).closest('.task').remove();
		$('.' + window.task_container).remove(); 
	});
	$('.destroy_task').on('click', function(){
		window.task_container = $(this).closest('.task').attr('class').split(' ')[2];
	}); 

  $('.destroy_task_assignment').on('ajax:success', function() {
    $(this).closest('.task_assignment').remove();
  });
  
  $('.update_team').on('submit', function(){
  });

});
