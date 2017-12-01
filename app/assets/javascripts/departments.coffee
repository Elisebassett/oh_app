	$(document).on 'turbolinks:load', ->

		$('.destroy_d').on 'ajax:success', ->
			# console.log('worked')
			$('.' + window.department_section).remove()

		$('.destroy_d').on 'click', ->
			window.department_section = $(this).closest('.department').attr('class').split(' ')[4]
