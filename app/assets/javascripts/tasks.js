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