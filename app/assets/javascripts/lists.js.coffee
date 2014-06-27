# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

class ListHandler
	constructor: ->
		$("#list_name").on "keyup", @submit_form
		$(".active").on "keyup", @submit_form
		$("input[type=checkbox]").on "click", @handle_item_click
		$("ul.list li").hover(@show_bin, @hide_bin)

	show_bin: (e) =>
		$(e.target).find("a").css("display", "inline")
	
	hide_bin: (e) =>
		$(e.target).find("a").fadeOut()
	
	handle_item_click: =>
		$("input[type=checkbox]").each (i, el) ->
			
			if el.checked
				$(el).next("input").addClass("completed") 
			else
				$(el).next("input").removeClass("completed")

		@submit_form()

	submit_form: =>
		$(".edit_list").submit()

$(document).on "ready page:load", ->
	new ListHandler
