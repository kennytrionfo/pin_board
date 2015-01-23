# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# this finds the pins div and lets masonry do its work. this is from github. 
$ ->
	$('#pins').imagesLoaded ->
		$('#pins').masonry
			itemsSelector: '.box'
			isFitWidth: true
