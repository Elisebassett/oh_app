	$(document).on 'turbolinks:load', ->

	$('.destroy_d').on 'ajax:success', ->
		# console.log('worked')
		$(this).closest('.department').remove()