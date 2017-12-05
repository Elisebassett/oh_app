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

	$(document).on('ajax:success', '.destroy_task', function(){
		$(this).closest('.task').remove();
		$('.' + window.task_container).remove(); 
	});
	$(document).on('click', '.destroy_task', function(){
		window.task_container = $(this).closest('.task').attr('class').split(' ')[2];
	}); 

  $(document).on('ajax:success', '.destroy_task_assignment', function() {
    $(this).closest('.task_assignment').remove();
  });
   // gets the index of the li  
});
